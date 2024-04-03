(define (cddr s) (cdr (cdr s)))

(define (cadr s) (car(cdr s)))

(define (caddr s) (car (cdr (cdr s))))  

(define (sign num) (cond ((> 0 num) -1)((= 0 num) 0)((< 0 num) 1)))

(define (square x) (* x x))

(define (pow x y)
    (if (= y 1) x 
        (if (even? y) 
            (square (pow x (/ y 2)))
            (* x (square (pow x (floor (/ y 2)))) )
        )
    
    )
)

(define (unique s) 'YOUR-CODE-HERE
    (if (null? s) nil
        (cons (car s)
        (filter (lambda (x) (not (eq? x (car s))))
           (unique (cdr s))
           
        )
        )
    )
)

(define (replicate x n) 'YOUR-CODE-HERE
    (define (repl_helper x s cnt)
            (if (= 0 cnt) s
                (repl_helper x (cons x s) (- cnt 1))
            )
    )
    (repl_helper x nil n)
)

(define (accumulate combiner start n term)
  'YOUR-CODE-HERE)

(define (accumulate-tail combiner start n term)
  'YOUR-CODE-HERE)

(define-macro
 (list-of map-expr for var in lst if filter-expr)
 'YOUR-CODE-HERE)

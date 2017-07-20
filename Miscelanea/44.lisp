(defun lista-suma-escalar (k array)
    (dotimes (a i)
        (dotimes (b j)
            (setf dim (list a b))
            (setf valor (* k (aref array a b)))
            (setf (apply #'aref array dim) valor)
        )
    )
    (format t "~%Resultado: ~a" array)
)

(format t "~%Ingrese las dimensiones de su matriz: (i, j)")
(format t "~%i : ")
(defvar i (read))
(format t "j : ")
(defvar j (read))
(setf dim (list i j))
(setf array (make-array dim))
(format t "~%Elementos de la matriz: ~%")
(dotimes (a i)
    (dotimes (b j)
        (format t "(~a, " a)
        (format t "~a): " b)
        (setf e (read))
        (setf dim (list a b))
        (setf (apply #'aref array dim) e)
    )
)
(format t "~%~a" array)

(format t "~%~%El número para la multiplicación escalar: ")
(setf k (read))

(lista-suma-escalar k array)

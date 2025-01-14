
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_wq {int wqe_shift; } ;
struct mlx5_ib_qp {scalar_t__ wq_sig; struct mlx5_ib_wq rq; } ;
struct mlx5_ib_dev {int dummy; } ;


 int EFAULT ;
 int mlx5_ib_err (struct mlx5_ib_dev*,char*) ;

__attribute__((used)) static int mlx5_ib_mr_responder_pfault_handler_rq(struct mlx5_ib_dev *dev,
        struct mlx5_ib_qp *qp,
        void *wqe, void **wqe_end,
        int wqe_length)
{
 struct mlx5_ib_wq *wq = &qp->rq;
 int wqe_size = 1 << wq->wqe_shift;

 if (qp->wq_sig) {
  mlx5_ib_err(dev, "ODP fault with WQE signatures is not supported\n");
  return -EFAULT;
 }

 if (wqe_size > wqe_length) {
  mlx5_ib_err(dev, "Couldn't read all of the receive WQE's content\n");
  return -EFAULT;
 }

 *wqe_end = wqe + wqe_size;

 return 0;
}

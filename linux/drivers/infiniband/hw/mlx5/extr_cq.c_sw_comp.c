
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_wq {unsigned int head; int tail; int wqe_cnt; int * wrid; } ;
struct mlx5_ib_qp {int ibqp; struct mlx5_ib_wq rq; struct mlx5_ib_wq sq; } ;
struct ib_wc {int * qp; int vendor_err; int status; int wr_id; } ;


 int IB_WC_WR_FLUSH_ERR ;
 int MLX5_CQE_SYNDROME_WR_FLUSH_ERR ;

__attribute__((used)) static void sw_comp(struct mlx5_ib_qp *qp, int num_entries, struct ib_wc *wc,
      int *npolled, int is_send)
{
 struct mlx5_ib_wq *wq;
 unsigned int cur;
 int np;
 int i;

 wq = (is_send) ? &qp->sq : &qp->rq;
 cur = wq->head - wq->tail;
 np = *npolled;

 if (cur == 0)
  return;

 for (i = 0; i < cur && np < num_entries; i++) {
  wc->wr_id = wq->wrid[wq->tail & (wq->wqe_cnt - 1)];
  wc->status = IB_WC_WR_FLUSH_ERR;
  wc->vendor_err = MLX5_CQE_SYNDROME_WR_FLUSH_ERR;
  wq->tail++;
  np++;
  wc->qp = &qp->ibqp;
  wc++;
 }
 *npolled = np;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_ib_wq {unsigned int head; int tail; int wqe_cnt; int * wrid; } ;
struct mlx4_ib_qp {int ibqp; struct mlx4_ib_wq rq; struct mlx4_ib_wq sq; } ;
struct ib_wc {int * qp; int vendor_err; int status; int wr_id; } ;


 int IB_WC_WR_FLUSH_ERR ;
 int MLX4_CQE_SYNDROME_WR_FLUSH_ERR ;

__attribute__((used)) static void mlx4_ib_qp_sw_comp(struct mlx4_ib_qp *qp, int num_entries,
          struct ib_wc *wc, int *npolled, int is_send)
{
 struct mlx4_ib_wq *wq;
 unsigned cur;
 int i;

 wq = is_send ? &qp->sq : &qp->rq;
 cur = wq->head - wq->tail;

 if (cur == 0)
  return;

 for (i = 0; i < cur && *npolled < num_entries; i++) {
  wc->wr_id = wq->wrid[wq->tail & (wq->wqe_cnt - 1)];
  wc->status = IB_WC_WR_FLUSH_ERR;
  wc->vendor_err = MLX4_CQE_SYNDROME_WR_FLUSH_ERR;
  wq->tail++;
  (*npolled)++;
  wc->qp = &qp->ibqp;
  wc++;
 }
}

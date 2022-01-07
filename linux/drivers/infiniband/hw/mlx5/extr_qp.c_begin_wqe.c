
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_wqe_ctrl_seg {int dummy; } ;
struct mlx5_ib_qp {int dummy; } ;
struct ib_send_wr {int send_flags; } ;


 int IB_SEND_SIGNALED ;
 int IB_SEND_SOLICITED ;
 int __begin_wqe (struct mlx5_ib_qp*,void**,struct mlx5_wqe_ctrl_seg**,struct ib_send_wr const*,unsigned int*,int*,void**,int,int,int) ;

__attribute__((used)) static int begin_wqe(struct mlx5_ib_qp *qp, void **seg,
       struct mlx5_wqe_ctrl_seg **ctrl,
       const struct ib_send_wr *wr, unsigned *idx,
       int *size, void **cur_edge, int nreq)
{
 return __begin_wqe(qp, seg, ctrl, wr, idx, size, cur_edge, nreq,
      wr->send_flags & IB_SEND_SIGNALED,
      wr->send_flags & IB_SEND_SOLICITED);
}

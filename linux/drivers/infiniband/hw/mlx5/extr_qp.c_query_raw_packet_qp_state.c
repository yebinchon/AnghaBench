
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct mlx5_ib_sq {int dummy; } ;
struct mlx5_ib_rq {int dummy; } ;
struct mlx5_ib_raw_packet_qp {struct mlx5_ib_rq rq; struct mlx5_ib_sq sq; } ;
struct TYPE_4__ {scalar_t__ wqe_cnt; } ;
struct TYPE_3__ {scalar_t__ wqe_cnt; } ;
struct mlx5_ib_qp {TYPE_2__ rq; TYPE_1__ sq; struct mlx5_ib_raw_packet_qp raw_packet_qp; } ;
struct mlx5_ib_dev {int dummy; } ;


 int MLX5_RQ_STATE_NA ;
 int MLX5_SQ_STATE_NA ;
 int query_raw_packet_qp_rq_state (struct mlx5_ib_dev*,struct mlx5_ib_rq*,int *) ;
 int query_raw_packet_qp_sq_state (struct mlx5_ib_dev*,struct mlx5_ib_sq*,int *) ;
 int sqrq_state_to_qp_state (int ,int ,struct mlx5_ib_qp*,int *) ;

__attribute__((used)) static int query_raw_packet_qp_state(struct mlx5_ib_dev *dev,
         struct mlx5_ib_qp *qp,
         u8 *raw_packet_qp_state)
{
 struct mlx5_ib_raw_packet_qp *raw_packet_qp = &qp->raw_packet_qp;
 struct mlx5_ib_sq *sq = &raw_packet_qp->sq;
 struct mlx5_ib_rq *rq = &raw_packet_qp->rq;
 int err;
 u8 sq_state = MLX5_SQ_STATE_NA;
 u8 rq_state = MLX5_RQ_STATE_NA;

 if (qp->sq.wqe_cnt) {
  err = query_raw_packet_qp_sq_state(dev, sq, &sq_state);
  if (err)
   return err;
 }

 if (qp->rq.wqe_cnt) {
  err = query_raw_packet_qp_rq_state(dev, rq, &rq_state);
  if (err)
   return err;
 }

 return sqrq_state_to_qp_state(sq_state, rq_state, qp,
          raw_packet_qp_state);
}

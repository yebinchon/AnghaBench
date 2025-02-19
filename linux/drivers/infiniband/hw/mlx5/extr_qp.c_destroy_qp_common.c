
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct mlx5_modify_raw_qp_param {int operation; } ;
struct TYPE_12__ {int qpn; } ;
struct mlx5_ib_qp_base {TYPE_5__ mqp; } ;
struct TYPE_11__ {scalar_t__ qp_type; scalar_t__ srq; int recv_cq; int send_cq; scalar_t__ rwq_ind_tbl; } ;
struct TYPE_10__ {struct mlx5_ib_qp_base base; } ;
struct TYPE_8__ {struct mlx5_ib_qp_base base; } ;
struct TYPE_9__ {TYPE_1__ rq; } ;
struct mlx5_ib_qp {int flags; scalar_t__ state; scalar_t__ create_type; TYPE_4__ ibqp; int cq_recv_list; int cq_send_list; int qps_list; TYPE_3__ trans_qp; TYPE_2__ raw_packet_qp; } ;
struct mlx5_ib_dev {int mdev; int reset_flow_resource_lock; } ;
struct mlx5_ib_cq {int dummy; } ;
struct ib_udata {int dummy; } ;
struct TYPE_13__ {int ibpd; } ;


 scalar_t__ IB_QPS_RESET ;
 scalar_t__ IB_QPT_RAW_PACKET ;
 int MLX5_CMD_OP_2RST_QP ;
 int MLX5_IB_QP_UNDERLAY ;
 scalar_t__ MLX5_QP_KERNEL ;
 scalar_t__ MLX5_QP_USER ;
 int __mlx5_ib_cq_clean (struct mlx5_ib_cq*,int ,int *) ;
 int destroy_qp_kernel (struct mlx5_ib_dev*,struct mlx5_ib_qp*) ;
 int destroy_qp_user (struct mlx5_ib_dev*,int *,struct mlx5_ib_qp*,struct mlx5_ib_qp_base*,struct ib_udata*) ;
 int destroy_raw_packet_qp (struct mlx5_ib_dev*,struct mlx5_ib_qp*) ;
 int destroy_rss_raw_qp_tir (struct mlx5_ib_dev*,struct mlx5_ib_qp*) ;
 int get_cqs (scalar_t__,int ,int ,struct mlx5_ib_cq**,struct mlx5_ib_cq**) ;
 TYPE_7__* get_pd (struct mlx5_ib_qp*) ;
 int list_del (int *) ;
 int mlx5_core_destroy_qp (int ,TYPE_5__*) ;
 int mlx5_core_qp_modify (int ,int ,int ,int *,TYPE_5__*) ;
 int mlx5_ib_lock_cqs (struct mlx5_ib_cq*,struct mlx5_ib_cq*) ;
 int mlx5_ib_unlock_cqs (struct mlx5_ib_cq*,struct mlx5_ib_cq*) ;
 int mlx5_ib_warn (struct mlx5_ib_dev*,char*,int ) ;
 int modify_raw_packet_qp (struct mlx5_ib_dev*,struct mlx5_ib_qp*,struct mlx5_modify_raw_qp_param*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int * to_msrq (scalar_t__) ;

__attribute__((used)) static void destroy_qp_common(struct mlx5_ib_dev *dev, struct mlx5_ib_qp *qp,
         struct ib_udata *udata)
{
 struct mlx5_ib_cq *send_cq, *recv_cq;
 struct mlx5_ib_qp_base *base;
 unsigned long flags;
 int err;

 if (qp->ibqp.rwq_ind_tbl) {
  destroy_rss_raw_qp_tir(dev, qp);
  return;
 }

 base = (qp->ibqp.qp_type == IB_QPT_RAW_PACKET ||
  qp->flags & MLX5_IB_QP_UNDERLAY) ?
        &qp->raw_packet_qp.rq.base :
        &qp->trans_qp.base;

 if (qp->state != IB_QPS_RESET) {
  if (qp->ibqp.qp_type != IB_QPT_RAW_PACKET &&
      !(qp->flags & MLX5_IB_QP_UNDERLAY)) {
   err = mlx5_core_qp_modify(dev->mdev,
        MLX5_CMD_OP_2RST_QP, 0,
        ((void*)0), &base->mqp);
  } else {
   struct mlx5_modify_raw_qp_param raw_qp_param = {
    .operation = MLX5_CMD_OP_2RST_QP
   };

   err = modify_raw_packet_qp(dev, qp, &raw_qp_param, 0);
  }
  if (err)
   mlx5_ib_warn(dev, "mlx5_ib: modify QP 0x%06x to RESET failed\n",
         base->mqp.qpn);
 }

 get_cqs(qp->ibqp.qp_type, qp->ibqp.send_cq, qp->ibqp.recv_cq,
  &send_cq, &recv_cq);

 spin_lock_irqsave(&dev->reset_flow_resource_lock, flags);
 mlx5_ib_lock_cqs(send_cq, recv_cq);

 list_del(&qp->qps_list);
 if (send_cq)
  list_del(&qp->cq_send_list);

 if (recv_cq)
  list_del(&qp->cq_recv_list);

 if (qp->create_type == MLX5_QP_KERNEL) {
  __mlx5_ib_cq_clean(recv_cq, base->mqp.qpn,
       qp->ibqp.srq ? to_msrq(qp->ibqp.srq) : ((void*)0));
  if (send_cq != recv_cq)
   __mlx5_ib_cq_clean(send_cq, base->mqp.qpn,
        ((void*)0));
 }
 mlx5_ib_unlock_cqs(send_cq, recv_cq);
 spin_unlock_irqrestore(&dev->reset_flow_resource_lock, flags);

 if (qp->ibqp.qp_type == IB_QPT_RAW_PACKET ||
     qp->flags & MLX5_IB_QP_UNDERLAY) {
  destroy_raw_packet_qp(dev, qp);
 } else {
  err = mlx5_core_destroy_qp(dev->mdev, &base->mqp);
  if (err)
   mlx5_ib_warn(dev, "failed to destroy QP 0x%x\n",
         base->mqp.qpn);
 }

 if (qp->create_type == MLX5_QP_KERNEL)
  destroy_qp_kernel(dev, qp);
 else if (qp->create_type == MLX5_QP_USER)
  destroy_qp_user(dev, &get_pd(qp)->ibpd, qp, base, udata);
}

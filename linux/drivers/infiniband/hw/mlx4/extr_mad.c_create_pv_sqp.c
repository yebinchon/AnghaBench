
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int max_send_wr; int max_recv_wr; int max_send_sge; int max_recv_sge; } ;
struct TYPE_9__ {int qp_type; int port_num; int event_handler; struct mlx4_ib_demux_pv_ctx* qp_context; int create_flags; TYPE_1__ cap; int sq_sig_type; int recv_cq; int send_cq; } ;
struct mlx4_ib_qp_tunnel_init_attr {int port; size_t slave; int proxy_qp_type; int port_num; scalar_t__ sq_psn; int qp_state; int qkey; int pkey_index; TYPE_4__ init_attr; } ;
struct mlx4_ib_demux_pv_qp {int * qp; } ;
struct mlx4_ib_demux_pv_ctx {int port; size_t slave; int ib_dev; int pd; int cq; struct mlx4_ib_demux_pv_qp* qp; } ;
struct ib_qp_attr {int port; size_t slave; int proxy_qp_type; int port_num; scalar_t__ sq_psn; int qp_state; int qkey; int pkey_index; TYPE_4__ init_attr; } ;
typedef enum ib_qp_type { ____Placeholder_ib_qp_type } ib_qp_type ;
struct TYPE_7__ {int *** virt2phys_pkey; } ;
struct TYPE_8__ {TYPE_2__ pkeys; } ;


 int EINVAL ;
 int IB_DEFAULT_PKEY_FULL ;
 int IB_QP1_QKEY ;
 int IB_QPS_INIT ;
 int IB_QPS_RTR ;
 int IB_QPS_RTS ;
 int IB_QPT_GSI ;
 int IB_QPT_UD ;
 int IB_QP_PKEY_INDEX ;
 int IB_QP_PORT ;
 int IB_QP_QKEY ;
 int IB_QP_SQ_PSN ;
 int IB_QP_STATE ;
 int IB_SIGNAL_ALL_WR ;
 scalar_t__ IS_ERR (int *) ;
 int MLX4_IB_SRIOV_SQP ;
 int MLX4_IB_SRIOV_TUNNEL_QP ;
 int MLX4_NUM_TUNNEL_BUFS ;
 int PTR_ERR (int *) ;
 int find_slave_port_pkey_ix (TYPE_3__*,size_t,int,int ,int *) ;
 int * ib_create_qp (int ,TYPE_4__*) ;
 int ib_destroy_qp (int *) ;
 int ib_modify_qp (int *,struct mlx4_ib_qp_tunnel_init_attr*,int) ;
 int memset (struct mlx4_ib_qp_tunnel_init_attr*,int ,int) ;
 int mlx4_ib_post_pv_qp_buf (struct mlx4_ib_demux_pv_ctx*,struct mlx4_ib_demux_pv_qp*,int) ;
 int pr_err (char*,...) ;
 int pv_qp_event_handler ;
 TYPE_3__* to_mdev (int ) ;

__attribute__((used)) static int create_pv_sqp(struct mlx4_ib_demux_pv_ctx *ctx,
       enum ib_qp_type qp_type, int create_tun)
{
 int i, ret;
 struct mlx4_ib_demux_pv_qp *tun_qp;
 struct mlx4_ib_qp_tunnel_init_attr qp_init_attr;
 struct ib_qp_attr attr;
 int qp_attr_mask_INIT;

 if (qp_type > IB_QPT_GSI)
  return -EINVAL;

 tun_qp = &ctx->qp[qp_type];

 memset(&qp_init_attr, 0, sizeof qp_init_attr);
 qp_init_attr.init_attr.send_cq = ctx->cq;
 qp_init_attr.init_attr.recv_cq = ctx->cq;
 qp_init_attr.init_attr.sq_sig_type = IB_SIGNAL_ALL_WR;
 qp_init_attr.init_attr.cap.max_send_wr = MLX4_NUM_TUNNEL_BUFS;
 qp_init_attr.init_attr.cap.max_recv_wr = MLX4_NUM_TUNNEL_BUFS;
 qp_init_attr.init_attr.cap.max_send_sge = 1;
 qp_init_attr.init_attr.cap.max_recv_sge = 1;
 if (create_tun) {
  qp_init_attr.init_attr.qp_type = IB_QPT_UD;
  qp_init_attr.init_attr.create_flags = MLX4_IB_SRIOV_TUNNEL_QP;
  qp_init_attr.port = ctx->port;
  qp_init_attr.slave = ctx->slave;
  qp_init_attr.proxy_qp_type = qp_type;
  qp_attr_mask_INIT = IB_QP_STATE | IB_QP_PKEY_INDEX |
      IB_QP_QKEY | IB_QP_PORT;
 } else {
  qp_init_attr.init_attr.qp_type = qp_type;
  qp_init_attr.init_attr.create_flags = MLX4_IB_SRIOV_SQP;
  qp_attr_mask_INIT = IB_QP_STATE | IB_QP_PKEY_INDEX | IB_QP_QKEY;
 }
 qp_init_attr.init_attr.port_num = ctx->port;
 qp_init_attr.init_attr.qp_context = ctx;
 qp_init_attr.init_attr.event_handler = pv_qp_event_handler;
 tun_qp->qp = ib_create_qp(ctx->pd, &qp_init_attr.init_attr);
 if (IS_ERR(tun_qp->qp)) {
  ret = PTR_ERR(tun_qp->qp);
  tun_qp->qp = ((void*)0);
  pr_err("Couldn't create %s QP (%d)\n",
         create_tun ? "tunnel" : "special", ret);
  return ret;
 }

 memset(&attr, 0, sizeof attr);
 attr.qp_state = IB_QPS_INIT;
 ret = 0;
 if (create_tun)
  ret = find_slave_port_pkey_ix(to_mdev(ctx->ib_dev), ctx->slave,
           ctx->port, IB_DEFAULT_PKEY_FULL,
           &attr.pkey_index);
 if (ret || !create_tun)
  attr.pkey_index =
   to_mdev(ctx->ib_dev)->pkeys.virt2phys_pkey[ctx->slave][ctx->port - 1][0];
 attr.qkey = IB_QP1_QKEY;
 attr.port_num = ctx->port;
 ret = ib_modify_qp(tun_qp->qp, &attr, qp_attr_mask_INIT);
 if (ret) {
  pr_err("Couldn't change %s qp state to INIT (%d)\n",
         create_tun ? "tunnel" : "special", ret);
  goto err_qp;
 }
 attr.qp_state = IB_QPS_RTR;
 ret = ib_modify_qp(tun_qp->qp, &attr, IB_QP_STATE);
 if (ret) {
  pr_err("Couldn't change %s qp state to RTR (%d)\n",
         create_tun ? "tunnel" : "special", ret);
  goto err_qp;
 }
 attr.qp_state = IB_QPS_RTS;
 attr.sq_psn = 0;
 ret = ib_modify_qp(tun_qp->qp, &attr, IB_QP_STATE | IB_QP_SQ_PSN);
 if (ret) {
  pr_err("Couldn't change %s qp state to RTS (%d)\n",
         create_tun ? "tunnel" : "special", ret);
  goto err_qp;
 }

 for (i = 0; i < MLX4_NUM_TUNNEL_BUFS; i++) {
  ret = mlx4_ib_post_pv_qp_buf(ctx, tun_qp, i);
  if (ret) {
   pr_err(" mlx4_ib_post_pv_buf error"
          " (err = %d, i = %d)\n", ret, i);
   goto err_qp;
  }
 }
 return 0;

err_qp:
 ib_destroy_qp(tun_qp->qp);
 tun_qp->qp = ((void*)0);
 return ret;
}

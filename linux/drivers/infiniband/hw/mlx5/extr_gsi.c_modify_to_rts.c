
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlx5_ib_gsi_qp {int port_num; } ;
struct mlx5_ib_dev {int dummy; } ;
struct ib_qp_attr {scalar_t__ sq_psn; int qp_state; int port_num; int qkey; int pkey_index; } ;
struct ib_qp {int qp_num; int device; } ;


 int IB_QP1_QKEY ;
 int IB_QPS_INIT ;
 int IB_QPS_RTR ;
 int IB_QPS_RTS ;
 int IB_QP_PKEY_INDEX ;
 int IB_QP_PORT ;
 int IB_QP_QKEY ;
 int IB_QP_SQ_PSN ;
 int IB_QP_STATE ;
 int ib_modify_qp (struct ib_qp*,struct ib_qp_attr*,int) ;
 int mlx5_ib_err (struct mlx5_ib_dev*,char*,int ,int) ;
 struct mlx5_ib_dev* to_mdev (int ) ;

__attribute__((used)) static int modify_to_rts(struct mlx5_ib_gsi_qp *gsi, struct ib_qp *qp,
    u16 qp_index)
{
 struct mlx5_ib_dev *dev = to_mdev(qp->device);
 struct ib_qp_attr attr;
 int mask;
 int ret;

 mask = IB_QP_STATE | IB_QP_PKEY_INDEX | IB_QP_QKEY | IB_QP_PORT;
 attr.qp_state = IB_QPS_INIT;
 attr.pkey_index = qp_index;
 attr.qkey = IB_QP1_QKEY;
 attr.port_num = gsi->port_num;
 ret = ib_modify_qp(qp, &attr, mask);
 if (ret) {
  mlx5_ib_err(dev, "could not change QP%d state to INIT: %d\n",
       qp->qp_num, ret);
  return ret;
 }

 attr.qp_state = IB_QPS_RTR;
 ret = ib_modify_qp(qp, &attr, IB_QP_STATE);
 if (ret) {
  mlx5_ib_err(dev, "could not change QP%d state to RTR: %d\n",
       qp->qp_num, ret);
  return ret;
 }

 attr.qp_state = IB_QPS_RTS;
 attr.sq_psn = 0;
 ret = ib_modify_qp(qp, &attr, IB_QP_STATE | IB_QP_SQ_PSN);
 if (ret) {
  mlx5_ib_err(dev, "could not change QP%d state to RTS: %d\n",
       qp->qp_num, ret);
  return ret;
 }

 return 0;
}

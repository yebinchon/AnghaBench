
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ipoib_dev_priv {int qp; int pkey_index; int port; int flags; } ;
struct ib_qp_attr {int qp_state; scalar_t__ sq_psn; int pkey_index; int port_num; scalar_t__ qkey; } ;


 int IB_QPS_INIT ;
 int IB_QPS_RESET ;
 int IB_QPS_RTR ;
 int IB_QPS_RTS ;
 int IB_QP_PKEY_INDEX ;
 int IB_QP_PORT ;
 int IB_QP_QKEY ;
 int IB_QP_SQ_PSN ;
 int IB_QP_STATE ;
 int IPOIB_PKEY_ASSIGNED ;
 int ib_modify_qp (int ,struct ib_qp_attr*,int) ;
 struct ipoib_dev_priv* ipoib_priv (struct net_device*) ;
 int ipoib_warn (struct ipoib_dev_priv*,char*,...) ;
 int test_bit (int ,int *) ;

int ipoib_init_qp(struct net_device *dev)
{
 struct ipoib_dev_priv *priv = ipoib_priv(dev);
 int ret;
 struct ib_qp_attr qp_attr;
 int attr_mask;

 if (!test_bit(IPOIB_PKEY_ASSIGNED, &priv->flags))
  return -1;

 qp_attr.qp_state = IB_QPS_INIT;
 qp_attr.qkey = 0;
 qp_attr.port_num = priv->port;
 qp_attr.pkey_index = priv->pkey_index;
 attr_mask =
     IB_QP_QKEY |
     IB_QP_PORT |
     IB_QP_PKEY_INDEX |
     IB_QP_STATE;
 ret = ib_modify_qp(priv->qp, &qp_attr, attr_mask);
 if (ret) {
  ipoib_warn(priv, "failed to modify QP to init, ret = %d\n", ret);
  goto out_fail;
 }

 qp_attr.qp_state = IB_QPS_RTR;

 attr_mask &= ~IB_QP_PORT;
 ret = ib_modify_qp(priv->qp, &qp_attr, attr_mask);
 if (ret) {
  ipoib_warn(priv, "failed to modify QP to RTR, ret = %d\n", ret);
  goto out_fail;
 }

 qp_attr.qp_state = IB_QPS_RTS;
 qp_attr.sq_psn = 0;
 attr_mask |= IB_QP_SQ_PSN;
 attr_mask &= ~IB_QP_PKEY_INDEX;
 ret = ib_modify_qp(priv->qp, &qp_attr, attr_mask);
 if (ret) {
  ipoib_warn(priv, "failed to modify QP to RTS, ret = %d\n", ret);
  goto out_fail;
 }

 return 0;

out_fail:
 qp_attr.qp_state = IB_QPS_RESET;
 if (ib_modify_qp(priv->qp, &qp_attr, IB_QP_STATE))
  ipoib_warn(priv, "Failed to modify QP to RESET state\n");

 return ret;
}

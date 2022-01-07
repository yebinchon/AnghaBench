
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ipoib_dev_priv {int dummy; } ;
struct ib_qp_attr {unsigned int rq_psn; int qp_state; } ;
struct ib_qp {int dummy; } ;
struct ib_cm_id {int dummy; } ;


 int IB_QPS_INIT ;
 int IB_QPS_RTR ;
 int IB_QPS_RTS ;
 int ib_cm_init_qp_attr (struct ib_cm_id*,struct ib_qp_attr*,int*) ;
 int ib_modify_qp (struct ib_qp*,struct ib_qp_attr*,int) ;
 struct ipoib_dev_priv* ipoib_priv (struct net_device*) ;
 int ipoib_warn (struct ipoib_dev_priv*,char*,int) ;

__attribute__((used)) static int ipoib_cm_modify_rx_qp(struct net_device *dev,
     struct ib_cm_id *cm_id, struct ib_qp *qp,
     unsigned int psn)
{
 struct ipoib_dev_priv *priv = ipoib_priv(dev);
 struct ib_qp_attr qp_attr;
 int qp_attr_mask, ret;

 qp_attr.qp_state = IB_QPS_INIT;
 ret = ib_cm_init_qp_attr(cm_id, &qp_attr, &qp_attr_mask);
 if (ret) {
  ipoib_warn(priv, "failed to init QP attr for INIT: %d\n", ret);
  return ret;
 }
 ret = ib_modify_qp(qp, &qp_attr, qp_attr_mask);
 if (ret) {
  ipoib_warn(priv, "failed to modify QP to INIT: %d\n", ret);
  return ret;
 }
 qp_attr.qp_state = IB_QPS_RTR;
 ret = ib_cm_init_qp_attr(cm_id, &qp_attr, &qp_attr_mask);
 if (ret) {
  ipoib_warn(priv, "failed to init QP attr for RTR: %d\n", ret);
  return ret;
 }
 qp_attr.rq_psn = psn;
 ret = ib_modify_qp(qp, &qp_attr, qp_attr_mask);
 if (ret) {
  ipoib_warn(priv, "failed to modify QP to RTR: %d\n", ret);
  return ret;
 }
 qp_attr.qp_state = IB_QPS_RTS;
 ret = ib_cm_init_qp_attr(cm_id, &qp_attr, &qp_attr_mask);
 if (ret) {
  ipoib_warn(priv, "failed to init QP attr for RTS: %d\n", ret);
  return 0;
 }
 ret = ib_modify_qp(qp, &qp_attr, qp_attr_mask);
 if (ret) {
  ipoib_warn(priv, "failed to modify QP to RTS: %d\n", ret);
  return 0;
 }

 return 0;
}

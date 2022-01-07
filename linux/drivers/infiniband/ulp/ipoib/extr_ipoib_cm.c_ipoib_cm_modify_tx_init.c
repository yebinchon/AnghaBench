
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ipoib_dev_priv {int port; int pkey; int ca; } ;
struct ib_qp_attr {int port_num; int qp_access_flags; int qp_state; int pkey_index; } ;
struct ib_qp {int dummy; } ;
struct ib_cm_id {int dummy; } ;


 int IB_ACCESS_LOCAL_WRITE ;
 int IB_QPS_INIT ;
 int IB_QP_ACCESS_FLAGS ;
 int IB_QP_PKEY_INDEX ;
 int IB_QP_PORT ;
 int IB_QP_STATE ;
 int ib_find_pkey (int ,int ,int ,int *) ;
 int ib_modify_qp (struct ib_qp*,struct ib_qp_attr*,int) ;
 struct ipoib_dev_priv* ipoib_priv (struct net_device*) ;
 int ipoib_warn (struct ipoib_dev_priv*,char*,int,...) ;

__attribute__((used)) static int ipoib_cm_modify_tx_init(struct net_device *dev,
      struct ib_cm_id *cm_id, struct ib_qp *qp)
{
 struct ipoib_dev_priv *priv = ipoib_priv(dev);
 struct ib_qp_attr qp_attr;
 int qp_attr_mask, ret;
 ret = ib_find_pkey(priv->ca, priv->port, priv->pkey, &qp_attr.pkey_index);
 if (ret) {
  ipoib_warn(priv, "pkey 0x%x not found: %d\n", priv->pkey, ret);
  return ret;
 }

 qp_attr.qp_state = IB_QPS_INIT;
 qp_attr.qp_access_flags = IB_ACCESS_LOCAL_WRITE;
 qp_attr.port_num = priv->port;
 qp_attr_mask = IB_QP_STATE | IB_QP_ACCESS_FLAGS | IB_QP_PKEY_INDEX | IB_QP_PORT;

 ret = ib_modify_qp(qp, &qp_attr, qp_attr_mask);
 if (ret) {
  ipoib_warn(priv, "failed to modify tx QP to INIT: %d\n", ret);
  return ret;
 }
 return 0;
}

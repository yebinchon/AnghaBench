
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ib_gid {int dummy; } ib_gid ;
typedef int u32 ;
typedef int u16 ;
struct net_device {int dummy; } ;
struct ipoib_dev_priv {int qp; int flags; int pkey; int port; int ca; } ;
struct ib_qp_attr {int qkey; } ;
struct ib_device {int dummy; } ;


 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int IB_QP_QKEY ;
 int IPOIB_PKEY_ASSIGNED ;
 int clear_bit (int ,int *) ;
 int ib_attach_mcast (int ,union ib_gid*,int ) ;
 scalar_t__ ib_find_pkey (int ,int ,int ,int *) ;
 int ib_modify_qp (int ,struct ib_qp_attr*,int ) ;
 struct ipoib_dev_priv* ipoib_priv (struct net_device*) ;
 int ipoib_warn (struct ipoib_dev_priv*,char*,int) ;
 int kfree (struct ib_qp_attr*) ;
 struct ib_qp_attr* kmalloc (int,int ) ;
 int set_bit (int ,int *) ;

int ipoib_mcast_attach(struct net_device *dev, struct ib_device *hca,
         union ib_gid *mgid, u16 mlid, int set_qkey, u32 qkey)
{
 struct ipoib_dev_priv *priv = ipoib_priv(dev);
 struct ib_qp_attr *qp_attr = ((void*)0);
 int ret;
 u16 pkey_index;

 if (ib_find_pkey(priv->ca, priv->port, priv->pkey, &pkey_index)) {
  clear_bit(IPOIB_PKEY_ASSIGNED, &priv->flags);
  ret = -ENXIO;
  goto out;
 }
 set_bit(IPOIB_PKEY_ASSIGNED, &priv->flags);

 if (set_qkey) {
  ret = -ENOMEM;
  qp_attr = kmalloc(sizeof(*qp_attr), GFP_KERNEL);
  if (!qp_attr)
   goto out;


  qp_attr->qkey = qkey;
  ret = ib_modify_qp(priv->qp, qp_attr, IB_QP_QKEY);
  if (ret) {
   ipoib_warn(priv, "failed to modify QP, ret = %d\n", ret);
   goto out;
  }
 }


 ret = ib_attach_mcast(priv->qp, mgid, mlid);
 if (ret)
  ipoib_warn(priv, "failed to attach to multicast group, ret = %d\n", ret);

out:
 kfree(qp_attr);
 return ret;
}

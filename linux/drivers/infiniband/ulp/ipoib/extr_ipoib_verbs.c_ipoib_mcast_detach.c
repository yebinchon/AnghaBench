
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ib_gid {int dummy; } ib_gid ;
typedef int u16 ;
struct net_device {int dummy; } ;
struct ipoib_dev_priv {int qp; } ;
struct ib_device {int dummy; } ;


 int ib_detach_mcast (int ,union ib_gid*,int ) ;
 struct ipoib_dev_priv* ipoib_priv (struct net_device*) ;

int ipoib_mcast_detach(struct net_device *dev, struct ib_device *hca,
         union ib_gid *mgid, u16 mlid)
{
 struct ipoib_dev_priv *priv = ipoib_priv(dev);
 int ret;

 ret = ib_detach_mcast(priv->qp, mgid, mlid);

 return ret;
}

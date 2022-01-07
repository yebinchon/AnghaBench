
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ib_gid {int dummy; } ib_gid ;
struct sockaddr_storage {scalar_t__ __data; } ;
struct net_device {int priv_flags; } ;
struct ipoib_dev_priv {int flush_light; } ;


 int EBUSY ;
 int IFF_LIVE_ADDR_CHANGE ;
 int ipoib_check_lladdr (struct net_device*,struct sockaddr_storage*) ;
 struct ipoib_dev_priv* ipoib_priv (struct net_device*) ;
 int ipoib_workqueue ;
 scalar_t__ netif_running (struct net_device*) ;
 int queue_work (int ,int *) ;
 int set_base_guid (struct ipoib_dev_priv*,union ib_gid*) ;

__attribute__((used)) static int ipoib_set_mac(struct net_device *dev, void *addr)
{
 struct ipoib_dev_priv *priv = ipoib_priv(dev);
 struct sockaddr_storage *ss = addr;
 int ret;

 if (!(dev->priv_flags & IFF_LIVE_ADDR_CHANGE) && netif_running(dev))
  return -EBUSY;

 ret = ipoib_check_lladdr(dev, ss);
 if (ret)
  return ret;

 set_base_guid(priv, (union ib_gid *)(ss->__data + 4));

 queue_work(ipoib_workqueue, &priv->flush_light);

 return 0;
}

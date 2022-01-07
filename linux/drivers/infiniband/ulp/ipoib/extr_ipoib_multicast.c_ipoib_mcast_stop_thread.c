
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ipoib_dev_priv {int mcast_task; } ;


 int cancel_delayed_work_sync (int *) ;
 int ipoib_dbg_mcast (struct ipoib_dev_priv*,char*) ;
 struct ipoib_dev_priv* ipoib_priv (struct net_device*) ;

int ipoib_mcast_stop_thread(struct net_device *dev)
{
 struct ipoib_dev_priv *priv = ipoib_priv(dev);

 ipoib_dbg_mcast(priv, "stopping multicast thread\n");

 cancel_delayed_work_sync(&priv->mcast_task);

 return 0;
}

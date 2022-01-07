
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ipoib_dev_priv {int lock; } ;


 int __ipoib_mcast_schedule_join_thread (struct ipoib_dev_priv*,int *,int ) ;
 int ipoib_dbg_mcast (struct ipoib_dev_priv*,char*) ;
 struct ipoib_dev_priv* ipoib_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ipoib_mcast_start_thread(struct net_device *dev)
{
 struct ipoib_dev_priv *priv = ipoib_priv(dev);
 unsigned long flags;

 ipoib_dbg_mcast(priv, "starting multicast thread\n");

 spin_lock_irqsave(&priv->lock, flags);
 __ipoib_mcast_schedule_join_thread(priv, ((void*)0), 0);
 spin_unlock_irqrestore(&priv->lock, flags);
}

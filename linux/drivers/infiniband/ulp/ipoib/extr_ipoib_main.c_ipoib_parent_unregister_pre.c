
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ipoib_dev_priv {int event_handler; TYPE_1__* dev; } ;
struct TYPE_2__ {int flags; } ;


 int IFF_UP ;
 int dev_change_flags (TYPE_1__*,int,int *) ;
 int flush_workqueue (int ) ;
 int ib_unregister_event_handler (int *) ;
 struct ipoib_dev_priv* ipoib_priv (struct net_device*) ;
 int ipoib_workqueue ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static void ipoib_parent_unregister_pre(struct net_device *ndev)
{
 struct ipoib_dev_priv *priv = ipoib_priv(ndev);





 rtnl_lock();
 dev_change_flags(priv->dev, priv->dev->flags & ~IFF_UP, ((void*)0));
 rtnl_unlock();


 ib_unregister_event_handler(&priv->event_handler);





 flush_workqueue(ipoib_workqueue);
}

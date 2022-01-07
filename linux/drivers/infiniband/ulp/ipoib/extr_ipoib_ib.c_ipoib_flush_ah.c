
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int work; } ;
struct ipoib_dev_priv {TYPE_1__ ah_reap_task; int wq; } ;


 int cancel_delayed_work (TYPE_1__*) ;
 int flush_workqueue (int ) ;
 struct ipoib_dev_priv* ipoib_priv (struct net_device*) ;
 int ipoib_reap_ah (int *) ;

__attribute__((used)) static void ipoib_flush_ah(struct net_device *dev)
{
 struct ipoib_dev_priv *priv = ipoib_priv(dev);

 cancel_delayed_work(&priv->ah_reap_task);
 flush_workqueue(priv->wq);
 ipoib_reap_ah(&priv->ah_reap_task.work);
}

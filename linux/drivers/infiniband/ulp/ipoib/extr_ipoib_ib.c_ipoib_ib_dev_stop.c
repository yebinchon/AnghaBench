
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ipoib_dev_priv {int flags; TYPE_1__* rn_ops; } ;
struct TYPE_2__ {int (* ndo_stop ) (struct net_device*) ;} ;


 int IPOIB_FLAG_INITIALIZED ;
 int clear_bit (int ,int *) ;
 int ipoib_flush_ah (struct net_device*) ;
 struct ipoib_dev_priv* ipoib_priv (struct net_device*) ;
 int stub1 (struct net_device*) ;

int ipoib_ib_dev_stop(struct net_device *dev)
{
 struct ipoib_dev_priv *priv = ipoib_priv(dev);

 priv->rn_ops->ndo_stop(dev);

 clear_bit(IPOIB_FLAG_INITIALIZED, &priv->flags);
 ipoib_flush_ah(dev);

 return 0;
}

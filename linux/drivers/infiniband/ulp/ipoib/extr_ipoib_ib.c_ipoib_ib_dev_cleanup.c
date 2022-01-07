
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ipoib_dev_priv {int * pd; TYPE_1__* rn_ops; int flags; } ;
struct TYPE_2__ {int (* ndo_uninit ) (struct net_device*) ;} ;


 int IPOIB_PKEY_ASSIGNED ;
 int clear_bit (int ,int *) ;
 int ib_dealloc_pd (int *) ;
 int ipoib_dbg (struct ipoib_dev_priv*,char*) ;
 int ipoib_flush_paths (struct net_device*) ;
 int ipoib_mcast_dev_flush (struct net_device*) ;
 int ipoib_mcast_stop_thread (struct net_device*) ;
 struct ipoib_dev_priv* ipoib_priv (struct net_device*) ;
 int ipoib_stop_ah (struct net_device*) ;
 int stub1 (struct net_device*) ;

void ipoib_ib_dev_cleanup(struct net_device *dev)
{
 struct ipoib_dev_priv *priv = ipoib_priv(dev);

 ipoib_dbg(priv, "cleaning up ib_dev\n");




 ipoib_flush_paths(dev);

 ipoib_mcast_stop_thread(dev);
 ipoib_mcast_dev_flush(dev);







 ipoib_stop_ah(dev);

 clear_bit(IPOIB_PKEY_ASSIGNED, &priv->flags);

 priv->rn_ops->ndo_uninit(dev);

 if (priv->pd) {
  ib_dealloc_pd(priv->pd);
  priv->pd = ((void*)0);
 }
}

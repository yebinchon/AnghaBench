
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ipoib_dev_priv {int * tx_ring; int * rx_ring; } ;


 int ipoib_cm_dev_cleanup (struct net_device*) ;
 int ipoib_napi_del (struct net_device*) ;
 struct ipoib_dev_priv* ipoib_priv (struct net_device*) ;
 int ipoib_transport_dev_cleanup (struct net_device*) ;
 int kfree (int *) ;
 int vfree (int *) ;

__attribute__((used)) static void ipoib_dev_uninit_default(struct net_device *dev)
{
 struct ipoib_dev_priv *priv = ipoib_priv(dev);

 ipoib_transport_dev_cleanup(dev);

 ipoib_napi_del(dev);

 ipoib_cm_dev_cleanup(dev);

 kfree(priv->rx_ring);
 vfree(priv->tx_ring);

 priv->rx_ring = ((void*)0);
 priv->tx_ring = ((void*)0);
}

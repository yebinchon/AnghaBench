
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ipoib_dev_priv {int flags; } ;


 int IPOIB_FLAG_OPER_UP ;
 int clear_bit (int ,int *) ;
 int ipoib_dbg (struct ipoib_dev_priv*,char*) ;
 int ipoib_flush_paths (struct net_device*) ;
 int ipoib_mcast_dev_flush (struct net_device*) ;
 int ipoib_mcast_stop_thread (struct net_device*) ;
 struct ipoib_dev_priv* ipoib_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;

void ipoib_ib_dev_down(struct net_device *dev)
{
 struct ipoib_dev_priv *priv = ipoib_priv(dev);

 ipoib_dbg(priv, "downing ib_dev\n");

 clear_bit(IPOIB_FLAG_OPER_UP, &priv->flags);
 netif_carrier_off(dev);

 ipoib_mcast_stop_thread(dev);
 ipoib_mcast_dev_flush(dev);

 ipoib_flush_paths(dev);
}

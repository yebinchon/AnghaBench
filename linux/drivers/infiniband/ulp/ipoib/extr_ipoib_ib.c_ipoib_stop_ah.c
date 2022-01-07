
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ipoib_dev_priv {int flags; } ;


 int IPOIB_STOP_REAPER ;
 int ipoib_flush_ah (struct net_device*) ;
 struct ipoib_dev_priv* ipoib_priv (struct net_device*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void ipoib_stop_ah(struct net_device *dev)
{
 struct ipoib_dev_priv *priv = ipoib_priv(dev);

 set_bit(IPOIB_STOP_REAPER, &priv->flags);
 ipoib_flush_ah(dev);
}

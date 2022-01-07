
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ipoib_dev_priv {int flags; } ;
typedef int netdev_features_t ;


 int IPOIB_FLAG_ADMIN_CM ;
 int NETIF_F_IP_CSUM ;
 int NETIF_F_TSO ;
 struct ipoib_dev_priv* ipoib_priv (struct net_device*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static netdev_features_t ipoib_fix_features(struct net_device *dev, netdev_features_t features)
{
 struct ipoib_dev_priv *priv = ipoib_priv(dev);

 if (test_bit(IPOIB_FLAG_ADMIN_CM, &priv->flags))
  features &= ~(NETIF_F_IP_CSUM | NETIF_F_TSO);

 return features;
}

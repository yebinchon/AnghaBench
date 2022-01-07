
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int ifindex; } ;
struct ipoib_dev_priv {TYPE_1__* parent; int flags; } ;
struct TYPE_2__ {int ifindex; } ;


 int IPOIB_FLAG_SUBINTERFACE ;
 struct ipoib_dev_priv* ipoib_priv (struct net_device const*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int ipoib_get_iflink(const struct net_device *dev)
{
 struct ipoib_dev_priv *priv = ipoib_priv(dev);


 if (!test_bit(IPOIB_FLAG_SUBINTERFACE, &priv->flags))
  return dev->ifindex;


 return priv->parent->ifindex;
}

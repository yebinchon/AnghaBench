
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ipoib_dev_priv {TYPE_1__* rx_ring; } ;
struct TYPE_2__ {scalar_t__ skb; } ;


 struct ipoib_dev_priv* ipoib_priv (struct net_device*) ;
 int ipoib_recvq_size ;

__attribute__((used)) static int recvs_pending(struct net_device *dev)
{
 struct ipoib_dev_priv *priv = ipoib_priv(dev);
 int pending = 0;
 int i;

 for (i = 0; i < ipoib_recvq_size; ++i)
  if (priv->rx_ring[i].skb)
   ++pending;

 return pending;
}

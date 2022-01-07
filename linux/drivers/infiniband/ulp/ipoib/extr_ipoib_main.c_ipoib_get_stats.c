
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtnl_link_stats64 {int dummy; } ;
struct net_device {int stats; } ;
struct ipoib_dev_priv {TYPE_1__* rn_ops; } ;
struct TYPE_2__ {int (* ndo_get_stats64 ) (struct net_device*,struct rtnl_link_stats64*) ;} ;


 struct ipoib_dev_priv* ipoib_priv (struct net_device*) ;
 int netdev_stats_to_stats64 (struct rtnl_link_stats64*,int *) ;
 int stub1 (struct net_device*,struct rtnl_link_stats64*) ;

__attribute__((used)) static void ipoib_get_stats(struct net_device *dev,
       struct rtnl_link_stats64 *stats)
{
 struct ipoib_dev_priv *priv = ipoib_priv(dev);

 if (priv->rn_ops->ndo_get_stats64)
  priv->rn_ops->ndo_get_stats64(dev, stats);
 else
  netdev_stats_to_stats64(stats, &dev->stats);
}

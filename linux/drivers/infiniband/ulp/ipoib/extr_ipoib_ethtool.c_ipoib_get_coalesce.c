
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int max_coalesced_frames; int coalesce_usecs; } ;
struct ipoib_dev_priv {TYPE_1__ ethtool; } ;
struct ethtool_coalesce {int rx_max_coalesced_frames; int rx_coalesce_usecs; } ;


 struct ipoib_dev_priv* ipoib_priv (struct net_device*) ;

__attribute__((used)) static int ipoib_get_coalesce(struct net_device *dev,
         struct ethtool_coalesce *coal)
{
 struct ipoib_dev_priv *priv = ipoib_priv(dev);

 coal->rx_coalesce_usecs = priv->ethtool.coalesce_usecs;
 coal->rx_max_coalesced_frames = priv->ethtool.max_coalesced_frames;

 return 0;
}

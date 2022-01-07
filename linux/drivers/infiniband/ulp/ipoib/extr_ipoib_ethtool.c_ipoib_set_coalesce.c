
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int coalesce_usecs; int max_coalesced_frames; } ;
struct ipoib_dev_priv {TYPE_1__ ethtool; int recv_cq; } ;
struct ethtool_coalesce {int rx_coalesce_usecs; int rx_max_coalesced_frames; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 struct ipoib_dev_priv* ipoib_priv (struct net_device*) ;
 int ipoib_warn (struct ipoib_dev_priv*,char*,int) ;
 int rdma_set_cq_moderation (int ,int,int) ;

__attribute__((used)) static int ipoib_set_coalesce(struct net_device *dev,
         struct ethtool_coalesce *coal)
{
 struct ipoib_dev_priv *priv = ipoib_priv(dev);
 int ret;





 if (coal->rx_coalesce_usecs > 0xffff ||
     coal->rx_max_coalesced_frames > 0xffff)
  return -EINVAL;

 ret = rdma_set_cq_moderation(priv->recv_cq,
         coal->rx_max_coalesced_frames,
         coal->rx_coalesce_usecs);
 if (ret && ret != -EOPNOTSUPP) {
  ipoib_warn(priv, "failed modifying CQ (%d)\n", ret);
  return ret;
 }

 priv->ethtool.coalesce_usecs = coal->rx_coalesce_usecs;
 priv->ethtool.max_coalesced_frames = coal->rx_max_coalesced_frames;

 return 0;
}

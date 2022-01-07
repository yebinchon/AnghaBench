
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vstats ;
struct rtnl_link_stats64 {int dummy; } ;
struct opa_vnic_stats {int netstats; } ;
struct opa_vnic_adapter {int stats_lock; TYPE_1__* rn_ops; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int (* ndo_get_stats64 ) (struct net_device*,int *) ;} ;


 int memcpy (struct rtnl_link_stats64*,int *,int) ;
 int memset (struct opa_vnic_stats*,int ,int) ;
 struct opa_vnic_adapter* opa_vnic_priv (struct net_device*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct net_device*,int *) ;

__attribute__((used)) static void opa_vnic_get_stats64(struct net_device *netdev,
     struct rtnl_link_stats64 *stats)
{
 struct opa_vnic_adapter *adapter = opa_vnic_priv(netdev);
 struct opa_vnic_stats vstats;

 memset(&vstats, 0, sizeof(vstats));
 spin_lock(&adapter->stats_lock);
 adapter->rn_ops->ndo_get_stats64(netdev, &vstats.netstats);
 spin_unlock(&adapter->stats_lock);
 memcpy(stats, &vstats.netstats, sizeof(*stats));
}

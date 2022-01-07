
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vstats ;
typedef int u64 ;
typedef int u32 ;
struct opa_vnic_stats {int netstats; } ;
struct opa_vnic_adapter {int stats_lock; TYPE_1__* rn_ops; } ;
struct net_device {int dummy; } ;
struct ethtool_stats {int dummy; } ;
struct TYPE_4__ {int stat_offset; int sizeof_stat; } ;
struct TYPE_3__ {int (* ndo_get_stats64 ) (struct net_device*,int *) ;} ;


 int VNIC_STATS_LEN ;
 int memset (struct opa_vnic_stats*,int ,int) ;
 struct opa_vnic_adapter* opa_vnic_priv (struct net_device*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct net_device*,int *) ;
 TYPE_2__* vnic_gstrings_stats ;

__attribute__((used)) static void vnic_get_ethtool_stats(struct net_device *netdev,
       struct ethtool_stats *stats, u64 *data)
{
 struct opa_vnic_adapter *adapter = opa_vnic_priv(netdev);
 struct opa_vnic_stats vstats;
 int i;

 memset(&vstats, 0, sizeof(vstats));
 spin_lock(&adapter->stats_lock);
 adapter->rn_ops->ndo_get_stats64(netdev, &vstats.netstats);
 spin_unlock(&adapter->stats_lock);
 for (i = 0; i < VNIC_STATS_LEN; i++) {
  char *p = (char *)&vstats + vnic_gstrings_stats[i].stat_offset;

  data[i] = (vnic_gstrings_stats[i].sizeof_stat ==
      sizeof(u64)) ? *(u64 *)p : *(u32 *)p;
 }
}

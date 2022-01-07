
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int EOPNOTSUPP ;
 int ETH_SS_STATS ;
 int VNIC_STATS_LEN ;

__attribute__((used)) static int vnic_get_sset_count(struct net_device *netdev, int sset)
{
 return (sset == ETH_SS_STATS) ? VNIC_STATS_LEN : -EOPNOTSUPP;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int stat_string; } ;


 int ETH_GSTRING_LEN ;
 scalar_t__ ETH_SS_STATS ;
 int VNIC_STATS_LEN ;
 int memcpy (int *,int ,int) ;
 TYPE_1__* vnic_gstrings_stats ;

__attribute__((used)) static void vnic_get_strings(struct net_device *netdev, u32 stringset, u8 *data)
{
 int i;

 if (stringset != ETH_SS_STATS)
  return;

 for (i = 0; i < VNIC_STATS_LEN; i++)
  memcpy(data + i * ETH_GSTRING_LEN,
         vnic_gstrings_stats[i].stat_string,
         ETH_GSTRING_LEN);
}

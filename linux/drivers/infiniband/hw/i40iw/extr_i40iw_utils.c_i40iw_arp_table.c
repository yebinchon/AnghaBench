
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct i40iw_device {scalar_t__ arp_table_size; int allocated_arps; TYPE_1__* arp_table; int next_arp_index; } ;
typedef int ip ;
struct TYPE_2__ {scalar_t__* ip_addr; int mac_addr; } ;





 int eth_zero_addr (int ) ;
 int ether_addr_copy (int ,int *) ;
 int i40iw_alloc_resource (struct i40iw_device*,int ,int,scalar_t__*,int *) ;
 int i40iw_free_resource (struct i40iw_device*,int ,int) ;
 scalar_t__ memcmp (scalar_t__*,scalar_t__*,int) ;
 int memcpy (scalar_t__*,scalar_t__*,int) ;
 int memset (scalar_t__*,int ,int) ;

int i40iw_arp_table(struct i40iw_device *iwdev,
      u32 *ip_addr,
      bool ipv4,
      u8 *mac_addr,
      u32 action)
{
 int arp_index;
 int err;
 u32 ip[4];

 if (ipv4) {
  memset(ip, 0, sizeof(ip));
  ip[0] = *ip_addr;
 } else {
  memcpy(ip, ip_addr, sizeof(ip));
 }

 for (arp_index = 0; (u32)arp_index < iwdev->arp_table_size; arp_index++)
  if (memcmp(iwdev->arp_table[arp_index].ip_addr, ip, sizeof(ip)) == 0)
   break;
 switch (action) {
 case 130:
  if (arp_index != iwdev->arp_table_size)
   return -1;

  arp_index = 0;
  err = i40iw_alloc_resource(iwdev, iwdev->allocated_arps,
        iwdev->arp_table_size,
        (u32 *)&arp_index,
        &iwdev->next_arp_index);

  if (err)
   return err;

  memcpy(iwdev->arp_table[arp_index].ip_addr, ip, sizeof(ip));
  ether_addr_copy(iwdev->arp_table[arp_index].mac_addr, mac_addr);
  break;
 case 128:
  if (arp_index == iwdev->arp_table_size)
   return -1;
  break;
 case 129:
  if (arp_index == iwdev->arp_table_size)
   return -1;
  memset(iwdev->arp_table[arp_index].ip_addr, 0,
         sizeof(iwdev->arp_table[arp_index].ip_addr));
  eth_zero_addr(iwdev->arp_table[arp_index].mac_addr);
  i40iw_free_resource(iwdev, iwdev->allocated_arps, arp_index);
  break;
 default:
  return -1;
 }
 return arp_index;
}

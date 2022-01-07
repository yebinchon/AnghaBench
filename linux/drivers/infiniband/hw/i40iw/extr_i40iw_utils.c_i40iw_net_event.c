
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct notifier_block {int dummy; } ;
struct net_device {int dummy; } ;
struct neighbour {int nud_state; int ha; scalar_t__ primary_key; scalar_t__ dev; } ;
struct i40iw_device {int closing; int init_state; } ;
struct i40iw_handler {struct i40iw_device device; } ;
typedef int __be32 ;


 int I40IW_ARP_ADD ;
 int I40IW_ARP_DELETE ;
 int IP_ADDR_REGISTERED ;

 int NOTIFY_DONE ;
 int NUD_VALID ;
 int i40iw_copy_ip_ntohl (int *,int *) ;
 struct i40iw_handler* i40iw_find_netdev (struct net_device*) ;
 int i40iw_manage_arp_cache (struct i40iw_device*,int ,int *,int,int ) ;

int i40iw_net_event(struct notifier_block *notifier, unsigned long event, void *ptr)
{
 struct neighbour *neigh = ptr;
 struct i40iw_device *iwdev;
 struct i40iw_handler *iwhdl;
 __be32 *p;
 u32 local_ipaddr[4];

 switch (event) {
 case 128:
  iwhdl = i40iw_find_netdev((struct net_device *)neigh->dev);
  if (!iwhdl)
   return NOTIFY_DONE;
  iwdev = &iwhdl->device;
  if (iwdev->init_state < IP_ADDR_REGISTERED || iwdev->closing)
   return NOTIFY_DONE;
  p = (__be32 *)neigh->primary_key;
  i40iw_copy_ip_ntohl(local_ipaddr, p);
  if (neigh->nud_state & NUD_VALID) {
   i40iw_manage_arp_cache(iwdev,
            neigh->ha,
            local_ipaddr,
            0,
            I40IW_ARP_ADD);

  } else {
   i40iw_manage_arp_cache(iwdev,
            neigh->ha,
            local_ipaddr,
            0,
            I40IW_ARP_DELETE);
  }
  break;
 default:
  break;
 }
 return NOTIFY_DONE;
}

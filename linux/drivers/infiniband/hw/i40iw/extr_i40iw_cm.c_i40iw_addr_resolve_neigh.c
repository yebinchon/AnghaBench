
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rtable {int dst; } ;
struct net_device {int dummy; } ;
struct neighbour {int nud_state; int ha; } ;
struct i40iw_device {TYPE_1__* arp_table; struct net_device* netdev; } ;
typedef int __be32 ;
struct TYPE_2__ {int mac_addr; } ;


 int I40IW_ARP_ADD ;
 int I40IW_ARP_DELETE ;
 int I40IW_ARP_RESOLVE ;
 scalar_t__ IS_ERR (struct rtable*) ;
 int NUD_VALID ;
 struct neighbour* dst_neigh_lookup (int *,int *) ;
 scalar_t__ ether_addr_equal (int ,int ) ;
 int htonl (int ) ;
 int i40iw_arp_table (struct i40iw_device*,int *,int,int *,int ) ;
 int i40iw_manage_arp_cache (struct i40iw_device*,int ,int *,int,int ) ;
 int i40iw_pr_err (char*) ;
 int init_net ;
 struct rtable* ip_route_output (int *,int ,int ,int ,int ) ;
 int ip_rt_put (struct rtable*) ;
 int neigh_event_send (struct neighbour*,int *) ;
 int neigh_release (struct neighbour*) ;
 struct net_device* netdev_master_upper_dev_get (struct net_device*) ;
 scalar_t__ netif_is_bond_slave (struct net_device*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static int i40iw_addr_resolve_neigh(struct i40iw_device *iwdev,
        u32 src_ip,
        u32 dst_ip,
        int arpindex)
{
 struct rtable *rt;
 struct neighbour *neigh;
 int rc = arpindex;
 struct net_device *netdev = iwdev->netdev;
 __be32 dst_ipaddr = htonl(dst_ip);
 __be32 src_ipaddr = htonl(src_ip);

 rt = ip_route_output(&init_net, dst_ipaddr, src_ipaddr, 0, 0);
 if (IS_ERR(rt)) {
  i40iw_pr_err("ip_route_output\n");
  return rc;
 }

 if (netif_is_bond_slave(netdev))
  netdev = netdev_master_upper_dev_get(netdev);

 neigh = dst_neigh_lookup(&rt->dst, &dst_ipaddr);

 rcu_read_lock();
 if (neigh) {
  if (neigh->nud_state & NUD_VALID) {
   if (arpindex >= 0) {
    if (ether_addr_equal(iwdev->arp_table[arpindex].mac_addr,
           neigh->ha))

     goto resolve_neigh_exit;
    i40iw_manage_arp_cache(iwdev,
             iwdev->arp_table[arpindex].mac_addr,
             &dst_ip,
             1,
             I40IW_ARP_DELETE);
   }

   i40iw_manage_arp_cache(iwdev, neigh->ha, &dst_ip, 1, I40IW_ARP_ADD);
   rc = i40iw_arp_table(iwdev, &dst_ip, 1, ((void*)0), I40IW_ARP_RESOLVE);
  } else {
   neigh_event_send(neigh, ((void*)0));
  }
 }
 resolve_neigh_exit:

 rcu_read_unlock();
 if (neigh)
  neigh_release(neigh);

 ip_rt_put(rt);
 return rc;
}

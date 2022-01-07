
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int u6_addr32; } ;
struct TYPE_5__ {TYPE_1__ in6_u; } ;
struct sockaddr_in6 {TYPE_2__ sin6_addr; void* sin6_family; } ;
struct net_device {int dummy; } ;
struct neighbour {int nud_state; int ha; } ;
struct i40iw_device {TYPE_3__* arp_table; int sc_dev; struct net_device* netdev; } ;
struct dst_entry {scalar_t__ error; } ;
typedef int src_addr ;
typedef int dst_addr ;
struct TYPE_6__ {int mac_addr; } ;


 void* AF_INET6 ;
 int I40IW_ARP_ADD ;
 int I40IW_ARP_DELETE ;
 int I40IW_ARP_RESOLVE ;
 int I40IW_DEBUG_CM ;
 int NUD_VALID ;
 struct neighbour* dst_neigh_lookup (struct dst_entry*,int ) ;
 int dst_release (struct dst_entry*) ;
 scalar_t__ ether_addr_equal (int ,int ) ;
 int i40iw_arp_table (struct i40iw_device*,int *,int,int *,int ) ;
 int i40iw_copy_ip_htonl (int ,int *) ;
 int i40iw_debug (int *,int ,char*,int ) ;
 struct dst_entry* i40iw_get_dst_ipv6 (struct sockaddr_in6*,struct sockaddr_in6*) ;
 int i40iw_manage_arp_cache (struct i40iw_device*,int ,int *,int,int ) ;
 int i40iw_pr_err (char*,scalar_t__) ;
 int memset (struct sockaddr_in6*,int ,int) ;
 int neigh_event_send (struct neighbour*,int *) ;
 int neigh_release (struct neighbour*) ;
 struct net_device* netdev_master_upper_dev_get (struct net_device*) ;
 scalar_t__ netif_is_bond_slave (struct net_device*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static int i40iw_addr_resolve_neigh_ipv6(struct i40iw_device *iwdev,
      u32 *src,
      u32 *dest,
      int arpindex)
{
 struct neighbour *neigh;
 int rc = arpindex;
 struct net_device *netdev = iwdev->netdev;
 struct dst_entry *dst;
 struct sockaddr_in6 dst_addr;
 struct sockaddr_in6 src_addr;

 memset(&dst_addr, 0, sizeof(dst_addr));
 dst_addr.sin6_family = AF_INET6;
 i40iw_copy_ip_htonl(dst_addr.sin6_addr.in6_u.u6_addr32, dest);
 memset(&src_addr, 0, sizeof(src_addr));
 src_addr.sin6_family = AF_INET6;
 i40iw_copy_ip_htonl(src_addr.sin6_addr.in6_u.u6_addr32, src);
 dst = i40iw_get_dst_ipv6(&src_addr, &dst_addr);
 if (!dst || dst->error) {
  if (dst) {
   dst_release(dst);
   i40iw_pr_err("ip6_route_output returned dst->error = %d\n",
         dst->error);
  }
  return rc;
 }

 if (netif_is_bond_slave(netdev))
  netdev = netdev_master_upper_dev_get(netdev);

 neigh = dst_neigh_lookup(dst, dst_addr.sin6_addr.in6_u.u6_addr32);

 rcu_read_lock();
 if (neigh) {
  i40iw_debug(&iwdev->sc_dev, I40IW_DEBUG_CM, "dst_neigh_lookup MAC=%pM\n", neigh->ha);
  if (neigh->nud_state & NUD_VALID) {
   if (arpindex >= 0) {
    if (ether_addr_equal
        (iwdev->arp_table[arpindex].mac_addr,
         neigh->ha)) {

     goto resolve_neigh_exit6;
    }
    i40iw_manage_arp_cache(iwdev,
             iwdev->arp_table[arpindex].mac_addr,
             dest,
             0,
             I40IW_ARP_DELETE);
   }
   i40iw_manage_arp_cache(iwdev,
            neigh->ha,
            dest,
            0,
            I40IW_ARP_ADD);
   rc = i40iw_arp_table(iwdev,
          dest,
          0,
          ((void*)0),
          I40IW_ARP_RESOLVE);
  } else {
   neigh_event_send(neigh, ((void*)0));
  }
 }

 resolve_neigh_exit6:
 rcu_read_unlock();
 if (neigh)
  neigh_release(neigh);
 dst_release(dst);
 return rc;
}

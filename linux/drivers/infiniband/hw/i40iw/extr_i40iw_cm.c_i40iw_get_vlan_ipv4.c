
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct net_device {int dummy; } ;


 int I40IW_NO_VLAN ;
 int dev_put (struct net_device*) ;
 int htonl (int ) ;
 int init_net ;
 struct net_device* ip_dev_find (int *,int ) ;
 int rdma_vlan_dev_vlan_id (struct net_device*) ;

__attribute__((used)) static u16 i40iw_get_vlan_ipv4(u32 *addr)
{
 struct net_device *netdev;
 u16 vlan_id = I40IW_NO_VLAN;

 netdev = ip_dev_find(&init_net, htonl(addr[0]));
 if (netdev) {
  vlan_id = rdma_vlan_dev_vlan_id(netdev);
  dev_put(netdev);
 }
 return vlan_id;
}

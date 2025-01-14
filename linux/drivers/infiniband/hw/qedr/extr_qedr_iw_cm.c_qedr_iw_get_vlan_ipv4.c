
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct qedr_dev {int dummy; } ;
struct net_device {int dummy; } ;


 int dev_put (struct net_device*) ;
 int htonl (int ) ;
 int init_net ;
 struct net_device* ip_dev_find (int *,int ) ;
 int rdma_vlan_dev_vlan_id (struct net_device*) ;

__attribute__((used)) static u16 qedr_iw_get_vlan_ipv4(struct qedr_dev *dev, u32 *addr)
{
 struct net_device *ndev;
 u16 vlan_id = 0;

 ndev = ip_dev_find(&init_net, htonl(addr[0]));

 if (ndev) {
  vlan_id = rdma_vlan_dev_vlan_id(ndev);
  dev_put(ndev);
 }
 if (vlan_id == 0xffff)
  vlan_id = 0;
 return vlan_id;
}

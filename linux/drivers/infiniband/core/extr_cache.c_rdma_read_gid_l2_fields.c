
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct net_device {int dev_addr; } ;
struct ib_gid_attr {int ndev; } ;


 int ENODEV ;
 int ether_addr_copy (int *,int ) ;
 int get_lower_dev_vlan ;
 scalar_t__ is_vlan_dev (struct net_device*) ;
 int netdev_walk_all_lower_dev_rcu (int ,int ,int*) ;
 struct net_device* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int vlan_dev_vlan_id (struct net_device*) ;

int rdma_read_gid_l2_fields(const struct ib_gid_attr *attr,
       u16 *vlan_id, u8 *smac)
{
 struct net_device *ndev;

 rcu_read_lock();
 ndev = rcu_dereference(attr->ndev);
 if (!ndev) {
  rcu_read_unlock();
  return -ENODEV;
 }
 if (smac)
  ether_addr_copy(smac, ndev->dev_addr);
 if (vlan_id) {
  *vlan_id = 0xffff;
  if (is_vlan_dev(ndev)) {
   *vlan_id = vlan_dev_vlan_id(ndev);
  } else {




   netdev_walk_all_lower_dev_rcu(attr->ndev,
     get_lower_dev_vlan, vlan_id);
  }
 }
 rcu_read_unlock();
 return 0;
}

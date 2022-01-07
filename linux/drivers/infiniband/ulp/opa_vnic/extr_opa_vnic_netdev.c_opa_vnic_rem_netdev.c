
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_netdev {int (* free_rdma_netdev ) (struct net_device*) ;} ;
struct opa_vnic_adapter {int mactbl_lock; int lock; struct net_device* netdev; } ;
struct net_device {int dummy; } ;


 int kfree (struct opa_vnic_adapter*) ;
 int mutex_destroy (int *) ;
 struct rdma_netdev* netdev_priv (struct net_device*) ;
 int opa_vnic_release_mac_tbl (struct opa_vnic_adapter*) ;
 int stub1 (struct net_device*) ;
 int unregister_netdev (struct net_device*) ;
 int v_info (char*) ;

void opa_vnic_rem_netdev(struct opa_vnic_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;
 struct rdma_netdev *rn = netdev_priv(netdev);

 v_info("removing\n");
 unregister_netdev(netdev);
 opa_vnic_release_mac_tbl(adapter);
 mutex_destroy(&adapter->lock);
 mutex_destroy(&adapter->mactbl_lock);
 kfree(adapter);
 rn->free_rdma_netdev(netdev);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct hfi1_vnic_vport_info {int lock; } ;


 int free_netdev (struct net_device*) ;
 int hfi1_vnic_deinit (struct hfi1_vnic_vport_info*) ;
 int mutex_destroy (int *) ;
 struct hfi1_vnic_vport_info* opa_vnic_dev_priv (struct net_device*) ;

__attribute__((used)) static void hfi1_vnic_free_rn(struct net_device *netdev)
{
 struct hfi1_vnic_vport_info *vinfo = opa_vnic_dev_priv(netdev);

 hfi1_vnic_deinit(vinfo);
 mutex_destroy(&vinfo->lock);
 free_netdev(netdev);
}

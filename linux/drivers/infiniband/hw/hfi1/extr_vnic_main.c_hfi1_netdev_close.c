
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct hfi1_vnic_vport_info {int lock; int flags; } ;


 int HFI1_VNIC_UP ;
 int hfi1_vnic_down (struct hfi1_vnic_vport_info*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct hfi1_vnic_vport_info* opa_vnic_dev_priv (struct net_device*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int hfi1_netdev_close(struct net_device *netdev)
{
 struct hfi1_vnic_vport_info *vinfo = opa_vnic_dev_priv(netdev);

 mutex_lock(&vinfo->lock);
 if (test_bit(HFI1_VNIC_UP, &vinfo->flags))
  hfi1_vnic_down(vinfo);
 mutex_unlock(&vinfo->lock);
 return 0;
}

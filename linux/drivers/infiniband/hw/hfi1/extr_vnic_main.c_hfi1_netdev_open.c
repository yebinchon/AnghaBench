
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct hfi1_vnic_vport_info {int lock; } ;


 int hfi1_vnic_up (struct hfi1_vnic_vport_info*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct hfi1_vnic_vport_info* opa_vnic_dev_priv (struct net_device*) ;

__attribute__((used)) static int hfi1_netdev_open(struct net_device *netdev)
{
 struct hfi1_vnic_vport_info *vinfo = opa_vnic_dev_priv(netdev);
 int rc;

 mutex_lock(&vinfo->lock);
 rc = hfi1_vnic_up(vinfo);
 mutex_unlock(&vinfo->lock);
 return rc;
}

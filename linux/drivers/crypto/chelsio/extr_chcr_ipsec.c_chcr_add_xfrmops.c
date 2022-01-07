
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int features; int hw_enc_features; int * xfrmdev_ops; } ;
struct cxgb4_lld_info {int nports; struct net_device** ports; } ;


 int NETIF_F_HW_ESP ;
 int chcr_xfrmdev_ops ;
 int netdev_change_features (struct net_device*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

void chcr_add_xfrmops(const struct cxgb4_lld_info *lld)
{
 struct net_device *netdev = ((void*)0);
 int i;

 for (i = 0; i < lld->nports; i++) {
  netdev = lld->ports[i];
  if (!netdev)
   continue;
  netdev->xfrmdev_ops = &chcr_xfrmdev_ops;
  netdev->hw_enc_features |= NETIF_F_HW_ESP;
  netdev->features |= NETIF_F_HW_ESP;
  rtnl_lock();
  netdev_change_features(netdev);
  rtnl_unlock();
 }
}

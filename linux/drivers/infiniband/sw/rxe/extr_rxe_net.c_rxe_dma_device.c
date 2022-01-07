
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rxe_dev {struct net_device* ndev; } ;
struct TYPE_2__ {struct device* parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct device {int dummy; } ;


 scalar_t__ is_vlan_dev (struct net_device*) ;
 struct net_device* vlan_dev_real_dev (struct net_device*) ;

struct device *rxe_dma_device(struct rxe_dev *rxe)
{
 struct net_device *ndev;

 ndev = rxe->ndev;

 if (is_vlan_dev(ndev))
  ndev = vlan_dev_real_dev(ndev);

 return ndev->dev.parent;
}

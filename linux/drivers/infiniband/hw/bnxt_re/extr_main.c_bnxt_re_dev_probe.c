
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {TYPE_2__* driver; int dev; } ;
struct net_device {int dummy; } ;
struct bnxt_en_dev {int flags; struct pci_dev* pdev; } ;
struct bnxt {struct bnxt_en_dev* (* ulp_probe ) (struct net_device*) ;} ;
struct TYPE_3__ {int owner; } ;
struct TYPE_4__ {TYPE_1__ driver; } ;


 int BNXT_EN_FLAG_ROCE_CAP ;
 int EINVAL ;
 int ENODEV ;
 struct bnxt_en_dev* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct bnxt_en_dev*) ;
 int ROCE_DRV_MODULE_NAME ;
 int dev_hold (struct net_device*) ;
 int dev_info (int *,char*,int ) ;
 struct bnxt* netdev_priv (struct net_device*) ;
 struct bnxt_en_dev* stub1 (struct net_device*) ;
 int try_module_get (int ) ;

__attribute__((used)) static struct bnxt_en_dev *bnxt_re_dev_probe(struct net_device *netdev)
{
 struct bnxt *bp = netdev_priv(netdev);
 struct bnxt_en_dev *en_dev;
 struct pci_dev *pdev;


 if (!bp->ulp_probe)
  return ERR_PTR(-EINVAL);

 en_dev = bp->ulp_probe(netdev);
 if (IS_ERR(en_dev))
  return en_dev;

 pdev = en_dev->pdev;
 if (!pdev)
  return ERR_PTR(-EINVAL);

 if (!(en_dev->flags & BNXT_EN_FLAG_ROCE_CAP)) {
  dev_info(&pdev->dev,
   "%s: probe error: RoCE is not supported on this device",
   ROCE_DRV_MODULE_NAME);
  return ERR_PTR(-ENODEV);
 }


 if (!try_module_get(pdev->driver->driver.owner))
  return ERR_PTR(-ENODEV);

 dev_hold(netdev);

 return en_dev;
}

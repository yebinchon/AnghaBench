
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pci_dev {TYPE_3__* bus; TYPE_2__* subordinate; } ;
struct device {int dummy; } ;
struct TYPE_6__ {scalar_t__ number; } ;
struct TYPE_4__ {scalar_t__ end; } ;
struct TYPE_5__ {scalar_t__ number; TYPE_1__ busn_res; } ;


 int dev_is_pci (struct device*) ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static bool
is_downstream_to_pci_bridge(struct device *dev, struct device *bridge)
{
 struct pci_dev *pdev, *pbridge;

 if (!dev_is_pci(dev) || !dev_is_pci(bridge))
  return 0;

 pdev = to_pci_dev(dev);
 pbridge = to_pci_dev(bridge);

 if (pbridge->subordinate &&
     pbridge->subordinate->number <= pdev->bus->number &&
     pbridge->subordinate->busn_res.end >= pdev->bus->number)
  return 1;

 return 0;
}

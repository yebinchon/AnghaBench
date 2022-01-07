
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {scalar_t__ devfn; } ;
struct amd8131_dev_info {scalar_t__ inst; scalar_t__ devfn; int dev; TYPE_1__* edac_dev; } ;
struct TYPE_4__ {int (* exit ) (struct amd8131_dev_info*) ;struct amd8131_dev_info* devices; } ;
struct TYPE_3__ {int dev; } ;


 scalar_t__ NO_BRIDGE ;
 TYPE_2__ amd8131_chipset ;
 int edac_pci_del_device (int ) ;
 int edac_pci_free_ctl_info (TYPE_1__*) ;
 int pci_dev_put (int ) ;
 int stub1 (struct amd8131_dev_info*) ;

__attribute__((used)) static void amd8131_remove(struct pci_dev *dev)
{
 struct amd8131_dev_info *dev_info;

 for (dev_info = amd8131_chipset.devices; dev_info->inst != NO_BRIDGE;
  dev_info++)
  if (dev_info->devfn == dev->devfn)
   break;

 if (dev_info->inst == NO_BRIDGE)
  return;

 if (dev_info->edac_dev) {
  edac_pci_del_device(dev_info->edac_dev->dev);
  edac_pci_free_ctl_info(dev_info->edac_dev);
 }

 if (amd8131_chipset.exit)
  amd8131_chipset.exit(dev_info);

 pci_dev_put(dev_info->dev);
}

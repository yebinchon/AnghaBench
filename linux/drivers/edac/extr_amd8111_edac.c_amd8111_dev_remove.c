
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {scalar_t__ device; } ;
struct amd8111_dev_info {TYPE_1__* dev; int (* exit ) (struct amd8111_dev_info*) ;TYPE_2__* edac_dev; scalar_t__ err_dev; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {scalar_t__ device; } ;


 struct amd8111_dev_info* amd8111_devices ;
 int edac_device_del_device (int ) ;
 int edac_device_free_ctl_info (TYPE_2__*) ;
 int pci_dev_put (TYPE_1__*) ;
 int stub1 (struct amd8111_dev_info*) ;

__attribute__((used)) static void amd8111_dev_remove(struct pci_dev *dev)
{
 struct amd8111_dev_info *dev_info;

 for (dev_info = amd8111_devices; dev_info->err_dev; dev_info++)
  if (dev_info->dev->device == dev->device)
   break;

 if (!dev_info->err_dev)
  return;

 if (dev_info->edac_dev) {
  edac_device_del_device(dev_info->edac_dev->dev);
  edac_device_free_ctl_info(dev_info->edac_dev);
 }

 if (dev_info->exit)
  dev_info->exit(dev_info);

 pci_dev_put(dev_info->dev);
}

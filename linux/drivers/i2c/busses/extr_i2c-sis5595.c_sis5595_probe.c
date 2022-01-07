
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; } ;
struct TYPE_4__ {int * parent; } ;
struct TYPE_5__ {int name; TYPE_1__ dev; } ;


 int ENODEV ;
 int SMB_INDEX ;
 int dev_err (int *,char*) ;
 int i2c_add_adapter (TYPE_2__*) ;
 int pci_dev_get (struct pci_dev*) ;
 int release_region (int,int) ;
 TYPE_2__ sis5595_adapter ;
 int sis5595_base ;
 int sis5595_pdev ;
 scalar_t__ sis5595_setup (struct pci_dev*) ;
 int snprintf (int ,int,char*,int) ;

__attribute__((used)) static int sis5595_probe(struct pci_dev *dev, const struct pci_device_id *id)
{
 int err;

 if (sis5595_setup(dev)) {
  dev_err(&dev->dev, "SIS5595 not detected, module not inserted.\n");
  return -ENODEV;
 }


 sis5595_adapter.dev.parent = &dev->dev;

 snprintf(sis5595_adapter.name, sizeof(sis5595_adapter.name),
   "SMBus SIS5595 adapter at %04x", sis5595_base + SMB_INDEX);
 err = i2c_add_adapter(&sis5595_adapter);
 if (err) {
  release_region(sis5595_base + SMB_INDEX, 2);
  return err;
 }





 sis5595_pdev = pci_dev_get(dev);
 return -ENODEV;
}

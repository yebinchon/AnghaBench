
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
 int SMB_STS ;
 int dev_err (int *,char*) ;
 int i2c_add_adapter (TYPE_2__*) ;
 TYPE_2__ sis630_adapter ;
 scalar_t__ sis630_setup (struct pci_dev*) ;
 int smbus_base ;
 int snprintf (int ,int,char*,int) ;

__attribute__((used)) static int sis630_probe(struct pci_dev *dev, const struct pci_device_id *id)
{
 if (sis630_setup(dev)) {
  dev_err(&dev->dev,
   "SIS630 compatible bus not detected, "
   "module not inserted.\n");
  return -ENODEV;
 }


 sis630_adapter.dev.parent = &dev->dev;

 snprintf(sis630_adapter.name, sizeof(sis630_adapter.name),
   "SMBus SIS630 adapter at %04x", smbus_base + SMB_STS);

 return i2c_add_adapter(&sis630_adapter);
}


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
 TYPE_2__ ali1535_adapter ;
 int ali1535_offset ;
 scalar_t__ ali1535_setup (struct pci_dev*) ;
 int dev_warn (int *,char*) ;
 int i2c_add_adapter (TYPE_2__*) ;
 int snprintf (int ,int,char*,int) ;

__attribute__((used)) static int ali1535_probe(struct pci_dev *dev, const struct pci_device_id *id)
{
 if (ali1535_setup(dev)) {
  dev_warn(&dev->dev,
   "ALI1535 not detected, module not inserted.\n");
  return -ENODEV;
 }


 ali1535_adapter.dev.parent = &dev->dev;

 snprintf(ali1535_adapter.name, sizeof(ali1535_adapter.name),
  "SMBus ALI1535 adapter at %04x", ali1535_offset);
 return i2c_add_adapter(&ali1535_adapter);
}

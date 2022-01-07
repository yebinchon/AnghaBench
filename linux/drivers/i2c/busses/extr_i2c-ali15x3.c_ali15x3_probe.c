
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
 TYPE_2__ ali15x3_adapter ;
 scalar_t__ ali15x3_setup (struct pci_dev*) ;
 int ali15x3_smba ;
 int dev_err (int *,char*) ;
 int i2c_add_adapter (TYPE_2__*) ;
 int snprintf (int ,int,char*,int) ;

__attribute__((used)) static int ali15x3_probe(struct pci_dev *dev, const struct pci_device_id *id)
{
 if (ali15x3_setup(dev)) {
  dev_err(&dev->dev,
   "ALI15X3 not detected, module not inserted.\n");
  return -ENODEV;
 }


 ali15x3_adapter.dev.parent = &dev->dev;

 snprintf(ali15x3_adapter.name, sizeof(ali15x3_adapter.name),
  "SMBus ALI15X3 adapter at %04x", ali15x3_smba);
 return i2c_add_adapter(&ali15x3_adapter);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; int * resource; } ;
struct TYPE_4__ {int * parent; } ;
struct TYPE_5__ {int class; TYPE_1__ dev; struct amd_smbus* algo_data; int * algo; int name; int owner; } ;
struct amd_smbus {int base; int size; TYPE_2__ adapter; struct pci_dev* dev; } ;
struct TYPE_6__ {int name; } ;


 int AMD_PCI_MISC ;
 int EBUSY ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_CLASS_HWMON ;
 int I2C_CLASS_SPD ;
 int IORESOURCE_IO ;
 int THIS_MODULE ;
 int acpi_check_resource_conflict (int *) ;
 TYPE_3__ amd8111_driver ;
 int i2c_add_adapter (TYPE_2__*) ;
 int kfree (struct amd_smbus*) ;
 struct amd_smbus* kzalloc (int,int ) ;
 int pci_resource_flags (struct pci_dev*,int ) ;
 int pci_resource_len (struct pci_dev*,int ) ;
 int pci_resource_start (struct pci_dev*,int ) ;
 int pci_set_drvdata (struct pci_dev*,struct amd_smbus*) ;
 int pci_write_config_dword (struct pci_dev*,int ,int ) ;
 int release_region (int,int ) ;
 int request_region (int,int ,int ) ;
 int smbus_algorithm ;
 int snprintf (int ,int,char*,int) ;

__attribute__((used)) static int amd8111_probe(struct pci_dev *dev, const struct pci_device_id *id)
{
 struct amd_smbus *smbus;
 int error;

 if (!(pci_resource_flags(dev, 0) & IORESOURCE_IO))
  return -ENODEV;

 smbus = kzalloc(sizeof(struct amd_smbus), GFP_KERNEL);
 if (!smbus)
  return -ENOMEM;

 smbus->dev = dev;
 smbus->base = pci_resource_start(dev, 0);
 smbus->size = pci_resource_len(dev, 0);

 error = acpi_check_resource_conflict(&dev->resource[0]);
 if (error) {
  error = -ENODEV;
  goto out_kfree;
 }

 if (!request_region(smbus->base, smbus->size, amd8111_driver.name)) {
  error = -EBUSY;
  goto out_kfree;
 }

 smbus->adapter.owner = THIS_MODULE;
 snprintf(smbus->adapter.name, sizeof(smbus->adapter.name),
  "SMBus2 AMD8111 adapter at %04x", smbus->base);
 smbus->adapter.class = I2C_CLASS_HWMON | I2C_CLASS_SPD;
 smbus->adapter.algo = &smbus_algorithm;
 smbus->adapter.algo_data = smbus;


 smbus->adapter.dev.parent = &dev->dev;

 pci_write_config_dword(smbus->dev, AMD_PCI_MISC, 0);
 error = i2c_add_adapter(&smbus->adapter);
 if (error)
  goto out_release_region;

 pci_set_drvdata(dev, smbus);
 return 0;

 out_release_region:
 release_region(smbus->base, smbus->size);
 out_kfree:
 kfree(smbus);
 return error;
}

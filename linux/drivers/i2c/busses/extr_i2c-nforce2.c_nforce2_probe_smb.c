
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u16 ;
struct pci_dev {int dev; } ;
struct TYPE_7__ {int * parent; } ;
struct TYPE_6__ {int class; TYPE_3__ dev; int name; struct nforce2_smbus* algo_data; int * algo; int owner; } ;
struct nforce2_smbus {int base; int size; TYPE_2__ adapter; } ;
struct TYPE_5__ {int name; } ;


 int EBUSY ;
 int EIO ;
 int I2C_CLASS_HWMON ;
 int I2C_CLASS_SPD ;
 scalar_t__ PCIBIOS_SUCCESSFUL ;
 int PCI_BASE_ADDRESS_IO_MASK ;
 int THIS_MODULE ;
 int acpi_check_region (int,int,int ) ;
 int dev_err (TYPE_3__*,char*,...) ;
 int dev_info (TYPE_3__*,char*,int) ;
 int i2c_add_adapter (TYPE_2__*) ;
 TYPE_1__ nforce2_driver ;
 scalar_t__ pci_read_config_word (struct pci_dev*,int,int*) ;
 int pci_resource_len (struct pci_dev*,int) ;
 int pci_resource_start (struct pci_dev*,int) ;
 int release_region (int,int) ;
 int request_region (int,int,int ) ;
 int smbus_algorithm ;
 int snprintf (int ,int,char*,int) ;

__attribute__((used)) static int nforce2_probe_smb(struct pci_dev *dev, int bar, int alt_reg,
        struct nforce2_smbus *smbus, const char *name)
{
 int error;

 smbus->base = pci_resource_start(dev, bar);
 if (smbus->base) {
  smbus->size = pci_resource_len(dev, bar);
 } else {

  u16 iobase;

  if (pci_read_config_word(dev, alt_reg, &iobase)
      != PCIBIOS_SUCCESSFUL) {
   dev_err(&dev->dev, "Error reading PCI config for %s\n",
    name);
   return -EIO;
  }

  smbus->base = iobase & PCI_BASE_ADDRESS_IO_MASK;
  smbus->size = 64;
 }

 error = acpi_check_region(smbus->base, smbus->size,
      nforce2_driver.name);
 if (error)
  return error;

 if (!request_region(smbus->base, smbus->size, nforce2_driver.name)) {
  dev_err(&smbus->adapter.dev, "Error requesting region %02x .. %02X for %s\n",
   smbus->base, smbus->base+smbus->size-1, name);
  return -EBUSY;
 }
 smbus->adapter.owner = THIS_MODULE;
 smbus->adapter.class = I2C_CLASS_HWMON | I2C_CLASS_SPD;
 smbus->adapter.algo = &smbus_algorithm;
 smbus->adapter.algo_data = smbus;
 smbus->adapter.dev.parent = &dev->dev;
 snprintf(smbus->adapter.name, sizeof(smbus->adapter.name),
  "SMBus nForce2 adapter at %04x", smbus->base);

 error = i2c_add_adapter(&smbus->adapter);
 if (error) {
  release_region(smbus->base, smbus->size);
  return error;
 }
 dev_info(&smbus->adapter.dev, "nForce2 SMBus adapter at %#x\n",
  smbus->base);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pci_device_id {scalar_t__ device; int driver_data; } ;
struct pci_dev {int device; int revision; int dev; } ;
struct TYPE_5__ {int * parent; } ;
struct TYPE_7__ {int name; TYPE_1__ dev; } ;
struct TYPE_6__ {int name; } ;


 int ENODEV ;
 int FEATURE_I2CBLOCK ;







 scalar_t__ PCI_DEVICE_ID_VIA_82C596_3 ;





 int SMBBA2 ;
 int SMBHSTCFG ;
 int acpi_check_region (int,int,int ) ;
 int dev_dbg (int *,char*,int) ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*) ;
 int dev_warn (int *,char*,int) ;
 scalar_t__ force ;
 int force_addr ;
 int i2c_add_adapter (TYPE_3__*) ;
 int * pci_dev_get (struct pci_dev*) ;
 int pci_dev_put (int *) ;
 int pci_read_config_byte (struct pci_dev*,int,unsigned char*) ;
 scalar_t__ pci_read_config_word (struct pci_dev*,int ,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,unsigned char) ;
 int pci_write_config_word (struct pci_dev*,int ,int) ;
 int release_region (int,int) ;
 int request_region (int,int,int ) ;
 int snprintf (int ,int,char*,int) ;
 TYPE_3__ vt596_adapter ;
 TYPE_2__ vt596_driver ;
 int vt596_features ;
 int * vt596_pdev ;
 int vt596_smba ;

__attribute__((used)) static int vt596_probe(struct pci_dev *pdev,
         const struct pci_device_id *id)
{
 unsigned char temp;
 int error;


 if (force_addr) {
  vt596_smba = force_addr & 0xfff0;
  force = 0;
  goto found;
 }

 if ((pci_read_config_word(pdev, id->driver_data, &vt596_smba)) ||
     !(vt596_smba & 0x0001)) {

  if (id->device == PCI_DEVICE_ID_VIA_82C596_3 &&
      !pci_read_config_word(pdev, SMBBA2, &vt596_smba) &&
      (vt596_smba & 0x0001)) {
   SMBHSTCFG = 0x84;
  } else {

   dev_err(&pdev->dev, "Cannot configure "
    "SMBus I/O Base address\n");
   return -ENODEV;
  }
 }

 vt596_smba &= 0xfff0;
 if (vt596_smba == 0) {
  dev_err(&pdev->dev, "SMBus base address "
   "uninitialized - upgrade BIOS or use "
   "force_addr=0xaddr\n");
  return -ENODEV;
 }

found:
 error = acpi_check_region(vt596_smba, 8, vt596_driver.name);
 if (error)
  return -ENODEV;

 if (!request_region(vt596_smba, 8, vt596_driver.name)) {
  dev_err(&pdev->dev, "SMBus region 0x%x already in use!\n",
   vt596_smba);
  return -ENODEV;
 }

 pci_read_config_byte(pdev, SMBHSTCFG, &temp);


 if (force_addr) {
  pci_write_config_byte(pdev, SMBHSTCFG, temp & 0xfe);
  pci_write_config_word(pdev, id->driver_data, vt596_smba);
  pci_write_config_byte(pdev, SMBHSTCFG, temp | 0x01);
  dev_warn(&pdev->dev, "WARNING: SMBus interface set to new "
    "address 0x%04x!\n", vt596_smba);
 } else if (!(temp & 0x01)) {
  if (force) {






   pci_write_config_byte(pdev, SMBHSTCFG, temp | 0x01);
   dev_info(&pdev->dev, "Enabling SMBus device\n");
  } else {
   dev_err(&pdev->dev, "SMBUS: Error: Host SMBus "
    "controller not enabled! - upgrade BIOS or "
    "use force=1\n");
   error = -ENODEV;
   goto release_region;
  }
 }

 dev_dbg(&pdev->dev, "VT596_smba = 0x%X\n", vt596_smba);

 switch (pdev->device) {
 case 131:
 case 130:
 case 129:
 case 128:
 case 133:
 case 136:
 case 135:
 case 134:
 case 137:
 case 139:
 case 138:
  vt596_features |= FEATURE_I2CBLOCK;
  break;
 case 132:


  if (pdev->revision >= 0x40)
   vt596_features |= FEATURE_I2CBLOCK;
  break;
 }

 vt596_adapter.dev.parent = &pdev->dev;
 snprintf(vt596_adapter.name, sizeof(vt596_adapter.name),
   "SMBus Via Pro adapter at %04x", vt596_smba);

 vt596_pdev = pci_dev_get(pdev);
 error = i2c_add_adapter(&vt596_adapter);
 if (error) {
  pci_dev_put(vt596_pdev);
  vt596_pdev = ((void*)0);
  goto release_region;
 }





 return -ENODEV;

release_region:
 release_region(vt596_smba, 8);
 return error;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; } ;
struct TYPE_2__ {int name; } ;


 int EBUSY ;
 int ENODEV ;
 int SMBIOSIZE ;
 scalar_t__ acpi_check_region (unsigned short,int ,int ) ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*,unsigned short) ;
 int dev_info (int *,char*,unsigned short) ;
 int pci_read_config_word (struct pci_dev*,unsigned short,unsigned short*) ;
 TYPE_1__ piix4_driver ;
 int request_region (unsigned short,int ,int ) ;

__attribute__((used)) static int piix4_setup_aux(struct pci_dev *PIIX4_dev,
      const struct pci_device_id *id,
      unsigned short base_reg_addr)
{



 unsigned short piix4_smba;


 pci_read_config_word(PIIX4_dev, base_reg_addr, &piix4_smba);
 if ((piix4_smba & 1) == 0) {
  dev_dbg(&PIIX4_dev->dev,
   "Auxiliary SMBus controller not enabled\n");
  return -ENODEV;
 }

 piix4_smba &= 0xfff0;
 if (piix4_smba == 0) {
  dev_dbg(&PIIX4_dev->dev,
   "Auxiliary SMBus base address uninitialized\n");
  return -ENODEV;
 }

 if (acpi_check_region(piix4_smba, SMBIOSIZE, piix4_driver.name))
  return -ENODEV;

 if (!request_region(piix4_smba, SMBIOSIZE, piix4_driver.name)) {
  dev_err(&PIIX4_dev->dev, "Auxiliary SMBus region 0x%x "
   "already in use!\n", piix4_smba);
  return -EBUSY;
 }

 dev_info(&PIIX4_dev->dev,
   "Auxiliary SMBus Host Controller at 0x%x\n",
   piix4_smba);

 return piix4_smba;
}

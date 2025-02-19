
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; } ;


 int ENODEV ;
 scalar_t__ PCIBIOS_SUCCESSFUL ;
 int VT8231_BASE_REG ;
 int VT8231_ENABLE_REG ;
 int VT8231_EXTENT ;
 int dev_err (int *,char*) ;
 int dev_warn (int *,char*,...) ;
 int force_addr ;
 int pci_dev_get (struct pci_dev*) ;
 scalar_t__ pci_read_config_word (struct pci_dev*,int ,int*) ;
 scalar_t__ pci_write_config_word (struct pci_dev*,int ,int) ;
 scalar_t__ platform_driver_register (int *) ;
 int platform_driver_unregister (int *) ;
 int s_bridge ;
 scalar_t__ vt8231_device_add (int) ;
 int vt8231_driver ;

__attribute__((used)) static int vt8231_pci_probe(struct pci_dev *dev,
    const struct pci_device_id *id)
{
 u16 address, val;
 if (force_addr) {
  address = force_addr & 0xff00;
  dev_warn(&dev->dev, "Forcing ISA address 0x%x\n",
    address);

  if (PCIBIOS_SUCCESSFUL !=
      pci_write_config_word(dev, VT8231_BASE_REG, address | 1))
   return -ENODEV;
 }

 if (PCIBIOS_SUCCESSFUL != pci_read_config_word(dev, VT8231_BASE_REG,
       &val))
  return -ENODEV;

 address = val & ~(VT8231_EXTENT - 1);
 if (address == 0) {
  dev_err(&dev->dev, "base address not set - upgrade BIOS or use force_addr=0xaddr\n");
  return -ENODEV;
 }

 if (PCIBIOS_SUCCESSFUL != pci_read_config_word(dev, VT8231_ENABLE_REG,
       &val))
  return -ENODEV;

 if (!(val & 0x0001)) {
  dev_warn(&dev->dev, "enabling sensors\n");
  if (PCIBIOS_SUCCESSFUL !=
   pci_write_config_word(dev, VT8231_ENABLE_REG,
       val | 0x0001))
   return -ENODEV;
 }

 if (platform_driver_register(&vt8231_driver))
  goto exit;


 if (vt8231_device_add(address))
  goto exit_unregister;
 s_bridge = pci_dev_get(dev);
 return -ENODEV;

exit_unregister:
 platform_driver_unregister(&vt8231_driver);
exit:
 return -ENODEV;
}

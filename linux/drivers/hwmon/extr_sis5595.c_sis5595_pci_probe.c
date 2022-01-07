
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; } ;


 int ENODEV ;
 scalar_t__ PCIBIOS_SUCCESSFUL ;
 int PCI_VENDOR_ID_SI ;
 int SIS5595_BASE_REG ;
 int SIS5595_ENABLE_REG ;
 int SIS5595_EXTENT ;
 int* blacklist ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*,...) ;
 int dev_warn (int *,char*,int) ;
 int force_addr ;
 int pci_dev_get (struct pci_dev*) ;
 int pci_dev_put (struct pci_dev*) ;
 struct pci_dev* pci_get_device (int ,int,int *) ;
 scalar_t__ pci_read_config_byte (struct pci_dev*,int ,int*) ;
 scalar_t__ pci_read_config_word (struct pci_dev*,int ,int*) ;
 scalar_t__ pci_write_config_byte (struct pci_dev*,int ,int) ;
 int pci_write_config_word (struct pci_dev*,int ,int) ;
 scalar_t__ platform_driver_register (int *) ;
 int platform_driver_unregister (int *) ;
 int s_bridge ;
 scalar_t__ sis5595_device_add (int) ;
 int sis5595_driver ;

__attribute__((used)) static int sis5595_pci_probe(struct pci_dev *dev,
           const struct pci_device_id *id)
{
 u16 address;
 u8 enable;
 int *i;

 for (i = blacklist; *i != 0; i++) {
  struct pci_dev *d;
  d = pci_get_device(PCI_VENDOR_ID_SI, *i, ((void*)0));
  if (d) {
   dev_err(&d->dev,
    "Looked for SIS5595 but found unsupported device %.4x\n",
    *i);
   pci_dev_put(d);
   return -ENODEV;
  }
 }

 force_addr &= ~(SIS5595_EXTENT - 1);
 if (force_addr) {
  dev_warn(&dev->dev, "Forcing ISA address 0x%x\n", force_addr);
  pci_write_config_word(dev, SIS5595_BASE_REG, force_addr);
 }

 if (PCIBIOS_SUCCESSFUL !=
     pci_read_config_word(dev, SIS5595_BASE_REG, &address)) {
  dev_err(&dev->dev, "Failed to read ISA address\n");
  return -ENODEV;
 }

 address &= ~(SIS5595_EXTENT - 1);
 if (!address) {
  dev_err(&dev->dev,
   "Base address not set - upgrade BIOS or use force_addr=0xaddr\n");
  return -ENODEV;
 }
 if (force_addr && address != force_addr) {

  dev_err(&dev->dev, "Failed to force ISA address\n");
  return -ENODEV;
 }

 if (PCIBIOS_SUCCESSFUL !=
     pci_read_config_byte(dev, SIS5595_ENABLE_REG, &enable)) {
  dev_err(&dev->dev, "Failed to read enable register\n");
  return -ENODEV;
 }
 if (!(enable & 0x80)) {
  if ((PCIBIOS_SUCCESSFUL !=
       pci_write_config_byte(dev, SIS5595_ENABLE_REG,
        enable | 0x80))
   || (PCIBIOS_SUCCESSFUL !=
       pci_read_config_byte(dev, SIS5595_ENABLE_REG, &enable))
   || (!(enable & 0x80))) {

   dev_err(&dev->dev, "Failed to enable HWM device\n");
   return -ENODEV;
  }
 }

 if (platform_driver_register(&sis5595_driver)) {
  dev_dbg(&dev->dev, "Failed to register sis5595 driver\n");
  goto exit;
 }

 s_bridge = pci_dev_get(dev);

 if (sis5595_device_add(address))
  goto exit_unregister;






 return -ENODEV;

exit_unregister:
 pci_dev_put(dev);
 platform_driver_unregister(&sis5595_driver);
exit:
 return -ENODEV;
}

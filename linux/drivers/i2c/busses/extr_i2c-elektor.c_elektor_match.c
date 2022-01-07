
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct device {int dummy; } ;


 int DEFAULT_BASE ;
 int I2C_PCF_CLK ;
 int I2C_PCF_TRNS90 ;
 int PCI_DEVICE_ID_CONTAQ_82C693 ;
 int PCI_VENDOR_ID_CONTAQ ;
 int base ;
 int clock ;
 int dev_dbg (struct device*,char*,unsigned char) ;
 int dev_err (struct device*,char*,int) ;
 int dev_info (struct device*,char*) ;
 int mmapped ;
 int pci_dev_put (struct pci_dev*) ;
 struct pci_dev* pci_get_device (int ,int ,int *) ;
 int pci_read_config_byte (struct pci_dev*,int,unsigned char*) ;

__attribute__((used)) static int elektor_match(struct device *dev, unsigned int id)
{
 if (mmapped && base < 0xc8000) {
  dev_err(dev, "incorrect base address (%#x) specified "
         "for mmapped I/O\n", base);
  return 0;
 }

 if (base == 0) {
  base = DEFAULT_BASE;
 }
 return 1;
}

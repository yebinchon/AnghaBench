
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dummy; } ;


 int ENODEV ;
 int I5K_REG_CHAN0_PRESENCE_ADDR ;
 int I5K_REG_CHAN1_PRESENCE_ADDR ;
 int PCI_VENDOR_ID_INTEL ;
 int pci_dev_put (struct pci_dev*) ;
 struct pci_dev* pci_get_device (int ,unsigned long,int *) ;
 scalar_t__ pci_read_config_word (struct pci_dev*,int ,int *) ;

__attribute__((used)) static int i5k_channel_probe(u16 *amb_present, unsigned long dev_id)
{
 struct pci_dev *pcidev;
 u16 val16;
 int res = -ENODEV;


 pcidev = pci_get_device(PCI_VENDOR_ID_INTEL, dev_id, ((void*)0));
 if (!pcidev)
  return -ENODEV;

 if (pci_read_config_word(pcidev, I5K_REG_CHAN0_PRESENCE_ADDR, &val16))
  goto out;
 amb_present[0] = val16;

 if (pci_read_config_word(pcidev, I5K_REG_CHAN1_PRESENCE_ADDR, &val16))
  goto out;
 amb_present[1] = val16;

 res = 0;

out:
 pci_dev_put(pcidev);
 return res;
}

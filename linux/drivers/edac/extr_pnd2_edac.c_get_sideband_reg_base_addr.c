
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u64 ;
typedef int u32 ;
struct pci_dev {int dummy; } ;


 int PCI_VENDOR_ID_INTEL ;
 int U64_LSHIFT (int,int) ;
 int pci_dev_put (struct pci_dev*) ;
 struct pci_dev* pci_get_device (int ,int,int *) ;
 int pci_read_config_byte (struct pci_dev*,int,scalar_t__*) ;
 int pci_read_config_dword (struct pci_dev*,int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,scalar_t__) ;

__attribute__((used)) static u64 get_sideband_reg_base_addr(void)
{
 struct pci_dev *pdev;
 u32 hi, lo;
 u8 hidden;

 pdev = pci_get_device(PCI_VENDOR_ID_INTEL, 0x19dd, ((void*)0));
 if (pdev) {

  pci_read_config_byte(pdev, 0xe1, &hidden);
  if (hidden)
   pci_write_config_byte(pdev, 0xe1, 0);

  pci_read_config_dword(pdev, 0x10, &lo);
  pci_read_config_dword(pdev, 0x14, &hi);
  lo &= 0xfffffff0;


  if (hidden)
   pci_write_config_byte(pdev, 0xe1, hidden);

  pci_dev_put(pdev);
  return (U64_LSHIFT(hi, 32) | U64_LSHIFT(lo, 0));
 } else {
  return 0xfd000000;
 }
}

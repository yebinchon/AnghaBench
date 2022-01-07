
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct pci_dev {int dummy; } ;
struct b_cr_mchbar_lo_pci {int base; int enable; } ;
struct b_cr_mchbar_hi_pci {int base; } ;


 int PCI_VENDOR_ID_INTEL ;
 int U64_LSHIFT (int ,int) ;
 int edac_dbg (int,char*) ;
 int pci_dev_put (struct pci_dev*) ;
 struct pci_dev* pci_get_device (int ,int,int *) ;
 int pci_read_config_dword (struct pci_dev*,int,int *) ;

__attribute__((used)) static u64 get_mem_ctrl_hub_base_addr(void)
{
 struct b_cr_mchbar_lo_pci lo;
 struct b_cr_mchbar_hi_pci hi;
 struct pci_dev *pdev;

 pdev = pci_get_device(PCI_VENDOR_ID_INTEL, 0x1980, ((void*)0));
 if (pdev) {
  pci_read_config_dword(pdev, 0x48, (u32 *)&lo);
  pci_read_config_dword(pdev, 0x4c, (u32 *)&hi);
  pci_dev_put(pdev);
 } else {
  return 0;
 }

 if (!lo.enable) {
  edac_dbg(2, "MMIO via memory controller hub base address is disabled!\n");
  return 0;
 }

 return U64_LSHIFT(hi.base, 32) | U64_LSHIFT(lo.base, 15);
}

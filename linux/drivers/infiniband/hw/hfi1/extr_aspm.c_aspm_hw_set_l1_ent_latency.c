
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hfi1_devdata {int pcidev; } ;


 int PCIE_CFG_REG_PL3 ;
 int PCIE_CFG_REG_PL3_L1_ENT_LATENCY_SHIFT ;
 int PCIE_CFG_REG_PL3_L1_ENT_LATENCY_SMASK ;
 int pci_read_config_dword (int ,int ,int*) ;
 int pci_write_config_dword (int ,int ,int) ;

__attribute__((used)) static void aspm_hw_set_l1_ent_latency(struct hfi1_devdata *dd)
{
 u32 l1_ent_lat = 0x4u;
 u32 reg32;

 pci_read_config_dword(dd->pcidev, PCIE_CFG_REG_PL3, &reg32);
 reg32 &= ~PCIE_CFG_REG_PL3_L1_ENT_LATENCY_SMASK;
 reg32 |= l1_ent_lat << PCIE_CFG_REG_PL3_L1_ENT_LATENCY_SHIFT;
 pci_write_config_dword(dd->pcidev, PCIE_CFG_REG_PL3, reg32);
}

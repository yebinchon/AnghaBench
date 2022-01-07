
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nvkm_pci {int dummy; } ;
typedef enum nvkm_pcie_speed { ____Placeholder_nvkm_pcie_speed } nvkm_pcie_speed ;





 int nvkm_pci_mask (struct nvkm_pci*,int,int,int) ;

__attribute__((used)) static void
gk104_pcie_set_lnkctl_speed(struct nvkm_pci *pci, enum nvkm_pcie_speed speed)
{
 u8 reg_v = 0;
 switch (speed) {
 case 130:
  reg_v = 1;
  break;
 case 129:
  reg_v = 2;
  break;
 case 128:
  reg_v = 3;
  break;
 }
 nvkm_pci_mask(pci, 0xa8, 0x3, reg_v);
}

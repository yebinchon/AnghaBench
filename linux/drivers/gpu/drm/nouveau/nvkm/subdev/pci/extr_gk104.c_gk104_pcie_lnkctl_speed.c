
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nvkm_pci {int dummy; } ;
typedef enum nvkm_pcie_speed { ____Placeholder_nvkm_pcie_speed } nvkm_pcie_speed ;


 int NVKM_PCIE_SPEED_2_5 ;
 int NVKM_PCIE_SPEED_5_0 ;
 int NVKM_PCIE_SPEED_8_0 ;
 int nvkm_pci_rd32 (struct nvkm_pci*,int) ;

__attribute__((used)) static enum nvkm_pcie_speed
gk104_pcie_lnkctl_speed(struct nvkm_pci *pci)
{
 u8 reg_v = nvkm_pci_rd32(pci, 0xa8) & 0x3;
 switch (reg_v) {
 case 0:
 case 1:
  return NVKM_PCIE_SPEED_2_5;
 case 2:
  return NVKM_PCIE_SPEED_5_0;
 case 3:
  return NVKM_PCIE_SPEED_8_0;
 }
 return -1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_pci {int dummy; } ;
typedef enum nvkm_pcie_speed { ____Placeholder_nvkm_pcie_speed } nvkm_pcie_speed ;


 int NVKM_PCIE_SPEED_2_5 ;
 int NVKM_PCIE_SPEED_5_0 ;
 int NVKM_PCIE_SPEED_8_0 ;
 int nvkm_pci_rd32 (struct nvkm_pci*,int) ;

enum nvkm_pcie_speed
g84_pcie_cur_speed(struct nvkm_pci *pci)
{
 u32 reg_v = nvkm_pci_rd32(pci, 0x88) & 0x30000;
 switch (reg_v) {
 case 0x30000:
  return NVKM_PCIE_SPEED_8_0;
 case 0x20000:
  return NVKM_PCIE_SPEED_5_0;
 case 0x10000:
 default:
  return NVKM_PCIE_SPEED_2_5;
 }
}

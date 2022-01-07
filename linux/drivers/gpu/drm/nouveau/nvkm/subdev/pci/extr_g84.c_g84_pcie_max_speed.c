
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_pci {int dummy; } ;
typedef enum nvkm_pcie_speed { ____Placeholder_nvkm_pcie_speed } nvkm_pcie_speed ;


 int NVKM_PCIE_SPEED_2_5 ;
 int NVKM_PCIE_SPEED_5_0 ;
 int nvkm_pci_rd32 (struct nvkm_pci*,int) ;

enum nvkm_pcie_speed
g84_pcie_max_speed(struct nvkm_pci *pci)
{
 u32 reg_v = nvkm_pci_rd32(pci, 0x460) & 0x3300;
 if (reg_v == 0x2200)
  return NVKM_PCIE_SPEED_5_0;
 return NVKM_PCIE_SPEED_2_5;
}

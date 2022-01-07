
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int device; } ;
struct nvkm_pci {TYPE_1__ subdev; } ;
typedef enum nvkm_pcie_speed { ____Placeholder_nvkm_pcie_speed } nvkm_pcie_speed ;


 int NVKM_PCIE_SPEED_2_5 ;
 int NVKM_PCIE_SPEED_5_0 ;
 int NVKM_PCIE_SPEED_8_0 ;
 int nvkm_rd32 (int ,int) ;

__attribute__((used)) static enum nvkm_pcie_speed
gk104_pcie_max_speed(struct nvkm_pci *pci)
{
 u32 max_speed = nvkm_rd32(pci->subdev.device, 0x8c1c0) & 0x300000;
 switch (max_speed) {
 case 0x000000:
  return NVKM_PCIE_SPEED_8_0;
 case 0x100000:
  return NVKM_PCIE_SPEED_5_0;
 case 0x200000:
  return NVKM_PCIE_SPEED_2_5;
 }
 return NVKM_PCIE_SPEED_2_5;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int device; } ;
struct nvkm_pci {TYPE_1__ subdev; } ;
typedef enum nvkm_pcie_speed { ____Placeholder_nvkm_pcie_speed } nvkm_pcie_speed ;


 int EINVAL ;
 int NVKM_PCIE_SPEED_2_5 ;
 int NVKM_PCIE_SPEED_5_0 ;
 int NVKM_PCIE_SPEED_8_0 ;
 int gf100_pcie_cap_speed (struct nvkm_pci*) ;
 int nvkm_rd32 (int ,int) ;

__attribute__((used)) static enum nvkm_pcie_speed
gk104_pcie_cap_speed(struct nvkm_pci *pci)
{
 int speed = gf100_pcie_cap_speed(pci);

 if (speed == 0)
  return NVKM_PCIE_SPEED_2_5;

 if (speed >= 1) {
  int speed2 = nvkm_rd32(pci->subdev.device, 0x8c1c0) & 0x30000;
  switch (speed2) {
  case 0x00000:
  case 0x10000:
   return NVKM_PCIE_SPEED_2_5;
  case 0x20000:
   return NVKM_PCIE_SPEED_5_0;
  case 0x30000:
   return NVKM_PCIE_SPEED_8_0;
  }
 }

 return -EINVAL;
}

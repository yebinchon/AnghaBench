
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct nvkm_device* device; } ;
struct nvkm_pci {TYPE_1__ subdev; } ;
struct nvkm_device {int dummy; } ;
typedef enum nvkm_pcie_speed { ____Placeholder_nvkm_pcie_speed } nvkm_pcie_speed ;





 int gf100_pcie_set_cap_speed (struct nvkm_pci*,int) ;
 int nvkm_mask (struct nvkm_device*,int,int,int) ;

__attribute__((used)) static void
gk104_pcie_set_cap_speed(struct nvkm_pci *pci, enum nvkm_pcie_speed speed)
{
 struct nvkm_device *device = pci->subdev.device;

 switch (speed) {
 case 130:
  gf100_pcie_set_cap_speed(pci, 0);
  nvkm_mask(device, 0x8c1c0, 0x30000, 0x10000);
  break;
 case 129:
  gf100_pcie_set_cap_speed(pci, 1);
  nvkm_mask(device, 0x8c1c0, 0x30000, 0x20000);
  break;
 case 128:
  gf100_pcie_set_cap_speed(pci, 1);
  nvkm_mask(device, 0x8c1c0, 0x30000, 0x30000);
  break;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {struct nvkm_device* device; } ;
struct nvkm_pci {TYPE_1__ subdev; } ;
struct nvkm_device {int dummy; } ;
typedef enum nvkm_pcie_speed { ____Placeholder_nvkm_pcie_speed } nvkm_pcie_speed ;





 int nvkm_mask (struct nvkm_device*,int,int,int) ;

__attribute__((used)) static void
gk104_pcie_set_link_speed(struct nvkm_pci *pci, enum nvkm_pcie_speed speed)
{
 struct nvkm_device *device = pci->subdev.device;
 u32 mask_value;

 switch (speed) {
 case 128:
  mask_value = 0x00000;
  break;
 case 129:
  mask_value = 0x40000;
  break;
 case 130:
 default:
  mask_value = 0x80000;
  break;
 }

 nvkm_mask(device, 0x8c040, 0xc0000, mask_value);
 nvkm_mask(device, 0x8c040, 0x1, 0x1);
}

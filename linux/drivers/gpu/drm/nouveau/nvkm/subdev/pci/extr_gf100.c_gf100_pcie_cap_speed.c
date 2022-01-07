
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {struct nvkm_device* device; } ;
struct nvkm_pci {TYPE_1__ subdev; } ;
struct nvkm_device {int dummy; } ;


 int nvkm_rd32 (struct nvkm_device*,int) ;

int
gf100_pcie_cap_speed(struct nvkm_pci *pci)
{
 struct nvkm_device *device = pci->subdev.device;
 u8 punits_pci_cap_speed = nvkm_rd32(device, 0x02241c) & 0x80;
 if (punits_pci_cap_speed == 0x80)
  return 1;
 return 0;
}

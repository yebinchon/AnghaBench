
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct nvkm_device* device; } ;
struct nvkm_pci {TYPE_1__ subdev; } ;
struct nvkm_device {int dummy; } ;


 int nvkm_rd32 (struct nvkm_device*,int) ;

int
g84_pcie_version(struct nvkm_pci *pci)
{
 struct nvkm_device *device = pci->subdev.device;
 return (nvkm_rd32(device, 0x00154c) & 0x1) + 1;
}

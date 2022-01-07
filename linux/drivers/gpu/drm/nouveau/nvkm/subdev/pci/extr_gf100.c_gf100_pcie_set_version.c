
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {struct nvkm_device* device; } ;
struct nvkm_pci {TYPE_1__ subdev; } ;
struct nvkm_device {int dummy; } ;


 int nvkm_mask (struct nvkm_device*,int,int,int) ;

void
gf100_pcie_set_version(struct nvkm_pci *pci, u8 ver)
{
 struct nvkm_device *device = pci->subdev.device;
 nvkm_mask(device, 0x02241c, 0x1, ver > 1 ? 1 : 0);
}

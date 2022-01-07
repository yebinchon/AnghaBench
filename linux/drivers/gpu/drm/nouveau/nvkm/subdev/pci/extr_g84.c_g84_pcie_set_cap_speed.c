
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct nvkm_device* device; } ;
struct nvkm_pci {TYPE_1__ subdev; } ;
struct nvkm_device {int dummy; } ;


 int nvkm_mask (struct nvkm_device*,int,int,int) ;

__attribute__((used)) static void
g84_pcie_set_cap_speed(struct nvkm_pci *pci, bool full_speed)
{
 struct nvkm_device *device = pci->subdev.device;
 nvkm_mask(device, 0x00154c, 0x80, full_speed ? 0x80 : 0x0);
}

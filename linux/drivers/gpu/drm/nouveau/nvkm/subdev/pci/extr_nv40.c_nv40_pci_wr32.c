
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct TYPE_2__ {struct nvkm_device* device; } ;
struct nvkm_pci {TYPE_1__ subdev; } ;
struct nvkm_device {int dummy; } ;


 int nvkm_wr32 (struct nvkm_device*,scalar_t__,int ) ;

void
nv40_pci_wr32(struct nvkm_pci *pci, u16 addr, u32 data)
{
 struct nvkm_device *device = pci->subdev.device;
 nvkm_wr32(device, 0x088000 + addr, data);
}

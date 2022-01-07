
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


 int nvkm_rd32 (struct nvkm_device*,scalar_t__) ;

__attribute__((used)) static u32
nv04_pci_rd32(struct nvkm_pci *pci, u16 addr)
{
 struct nvkm_device *device = pci->subdev.device;
 return nvkm_rd32(device, 0x001800 + addr);
}

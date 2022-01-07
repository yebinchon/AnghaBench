
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_device {struct nvkm_bios* bios; } ;
struct nvkm_bios {int dummy; } ;
struct TYPE_3__ {struct nvkm_device* device; } ;
struct TYPE_4__ {TYPE_1__ subdev; } ;
struct nv50_devinit {TYPE_2__ base; } ;


 int nvbios_rd32 (struct nvkm_bios*,int) ;
 int nvkm_wr32 (struct nvkm_device*,int,int) ;

__attribute__((used)) static void
pmu_data(struct nv50_devinit *init, u32 pmu, u32 img, u32 len)
{
 struct nvkm_device *device = init->base.subdev.device;
 struct nvkm_bios *bios = device->bios;
 int i;

 nvkm_wr32(device, 0x10a1c0, 0x01000000 | pmu);
 for (i = 0; i < len; i += 4)
  nvkm_wr32(device, 0x10a1c4, nvbios_rd32(bios, img + i));
}

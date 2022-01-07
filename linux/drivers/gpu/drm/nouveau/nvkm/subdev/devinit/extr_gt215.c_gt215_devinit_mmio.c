
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_devinit {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_3__ {struct nvkm_device* device; } ;
struct TYPE_4__ {TYPE_1__ subdev; } ;
struct nv50_devinit {int r001540; TYPE_2__ base; } ;


 int* gt215_devinit_mmio_part ;
 int hweight8 (int) ;
 struct nv50_devinit* nv50_devinit (struct nvkm_devinit*) ;
 int nvkm_rd32 (struct nvkm_device*,int) ;

__attribute__((used)) static u32
gt215_devinit_mmio(struct nvkm_devinit *base, u32 addr)
{
 struct nv50_devinit *init = nv50_devinit(base);
 struct nvkm_device *device = init->base.subdev.device;
 u32 *mmio = gt215_devinit_mmio_part;
 while (mmio[0]) {
  if (addr >= mmio[0] && addr <= mmio[1]) {
   u32 part = (addr / mmio[2]) & 7;
   if (!init->r001540)
    init->r001540 = nvkm_rd32(device, 0x001540);
   if (part >= hweight8((init->r001540 >> 16) & 0xff))
    return ~0;
   return addr;
  }
  mmio += 3;
 }

 return addr;
}

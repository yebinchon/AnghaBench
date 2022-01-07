
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_devinit {int dummy; } ;
struct nvbios_init {TYPE_1__* subdev; } ;
struct TYPE_4__ {scalar_t__ card_type; struct nvkm_devinit* devinit; } ;
struct TYPE_3__ {TYPE_2__* device; } ;


 scalar_t__ NV_50 ;
 int init_head (struct nvbios_init*) ;
 int init_link (struct nvbios_init*) ;
 int init_or (struct nvbios_init*) ;
 int nvkm_devinit_mmio (struct nvkm_devinit*,int) ;
 int warn (char*,int) ;

__attribute__((used)) static inline u32
init_nvreg(struct nvbios_init *init, u32 reg)
{
 struct nvkm_devinit *devinit = init->subdev->device->devinit;







 reg &= ~0x00000003;




 if (init->subdev->device->card_type >= NV_50) {
  if (reg & 0x80000000) {
   reg += init_head(init) * 0x800;
   reg &= ~0x80000000;
  }

  if (reg & 0x40000000) {
   reg += init_or(init) * 0x800;
   reg &= ~0x40000000;
   if (reg & 0x20000000) {
    reg += init_link(init) * 0x80;
    reg &= ~0x20000000;
   }
  }
 }

 if (reg & ~0x00fffffc)
  warn("unknown bits in register 0x%08x\n", reg);

 return nvkm_devinit_mmio(devinit, reg);
}

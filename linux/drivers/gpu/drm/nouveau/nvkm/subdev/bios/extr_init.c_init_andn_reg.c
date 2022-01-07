
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_bios {int dummy; } ;
struct nvbios_init {scalar_t__ offset; TYPE_2__* subdev; } ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct TYPE_3__ {struct nvkm_bios* bios; } ;


 int init_mask (struct nvbios_init*,int ,int ,int ) ;
 int nvbios_rd32 (struct nvkm_bios*,scalar_t__) ;
 int trace (char*,int ,int ) ;

__attribute__((used)) static void
init_andn_reg(struct nvbios_init *init)
{
 struct nvkm_bios *bios = init->subdev->device->bios;
 u32 reg = nvbios_rd32(bios, init->offset + 1);
 u32 mask = nvbios_rd32(bios, init->offset + 5);

 trace("ANDN_REG\tR[0x%06x] &= ~0x%08x\n", reg, mask);
 init->offset += 9;

 init_mask(init, reg, mask, 0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct nvkm_bios {int dummy; } ;
struct nvbios_init {scalar_t__ offset; TYPE_2__* subdev; } ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct TYPE_3__ {struct nvkm_bios* bios; } ;


 int init_wr32 (struct nvbios_init*,scalar_t__,int ) ;
 scalar_t__ nvbios_rd16 (struct nvkm_bios*,scalar_t__) ;
 int nvbios_rd32 (struct nvkm_bios*,scalar_t__) ;
 int trace (char*,int ,scalar_t__,int ) ;

__attribute__((used)) static void
init_zm_reg_indirect(struct nvbios_init *init)
{
 struct nvkm_bios *bios = init->subdev->device->bios;
 u32 reg = nvbios_rd32(bios, init->offset + 1);
 u16 addr = nvbios_rd16(bios, init->offset + 5);
 u32 data = nvbios_rd32(bios, addr);

 trace("ZM_REG_INDIRECT\tR[0x%06x] = VBIOS[0x%04x] = 0x%08x\n",
       reg, addr, data);
 init->offset += 7;

 init_wr32(init, addr, data);
}

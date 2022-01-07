
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct nvkm_bios {int dummy; } ;
struct nvbios_init {scalar_t__ offset; TYPE_2__* subdev; } ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct TYPE_3__ {struct nvkm_bios* bios; } ;


 int init_wr32 (struct nvbios_init*,int ,int ) ;
 int nvbios_rd16 (struct nvkm_bios*,scalar_t__) ;
 int nvbios_rd32 (struct nvkm_bios*,scalar_t__) ;
 int trace (char*,int ,int ) ;

__attribute__((used)) static void
init_zm_reg16(struct nvbios_init *init)
{
 struct nvkm_bios *bios = init->subdev->device->bios;
 u32 addr = nvbios_rd32(bios, init->offset + 1);
 u16 data = nvbios_rd16(bios, init->offset + 5);

 trace("ZM_REG\tR[0x%06x] = 0x%04x\n", addr, data);
 init->offset += 7;

 init_wr32(init, addr, data);
}

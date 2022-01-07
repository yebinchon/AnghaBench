
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct nvkm_bios {int dummy; } ;
struct nvbios_init {scalar_t__ offset; TYPE_2__* subdev; } ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct TYPE_3__ {struct nvkm_bios* bios; } ;


 scalar_t__ init_macro_table (struct nvbios_init*) ;
 int init_wr32 (struct nvbios_init*,int ,int ) ;
 int nvbios_rd08 (struct nvkm_bios*,scalar_t__) ;
 int nvbios_rd32 (struct nvkm_bios*,scalar_t__) ;
 int trace (char*,int,...) ;

__attribute__((used)) static void
init_macro(struct nvbios_init *init)
{
 struct nvkm_bios *bios = init->subdev->device->bios;
 u8 macro = nvbios_rd08(bios, init->offset + 1);
 u16 table;

 trace("MACRO\t0x%02x\n", macro);

 table = init_macro_table(init);
 if (table) {
  u32 addr = nvbios_rd32(bios, table + (macro * 8) + 0);
  u32 data = nvbios_rd32(bios, table + (macro * 8) + 4);
  trace("\t\tR[0x%06x] = 0x%08x\n", addr, data);
  init_wr32(init, addr, data);
 }

 init->offset += 2;
}

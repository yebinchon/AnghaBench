
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct nvkm_bios {int dummy; } ;
struct nvbios_init {TYPE_2__* subdev; } ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct TYPE_3__ {struct nvkm_bios* bios; } ;


 int init_io_flag_condition_table (struct nvbios_init*) ;
 int init_rdvgai (struct nvbios_init*,int,int) ;
 int nvbios_rd08 (struct nvkm_bios*,int) ;
 int nvbios_rd16 (struct nvkm_bios*,int) ;

__attribute__((used)) static bool
init_io_flag_condition_met(struct nvbios_init *init, u8 cond)
{
 struct nvkm_bios *bios = init->subdev->device->bios;
 u16 table = init_io_flag_condition_table(init);
 if (table) {
  u16 port = nvbios_rd16(bios, table + (cond * 9) + 0);
  u8 index = nvbios_rd08(bios, table + (cond * 9) + 2);
  u8 mask = nvbios_rd08(bios, table + (cond * 9) + 3);
  u8 shift = nvbios_rd08(bios, table + (cond * 9) + 4);
  u16 data = nvbios_rd16(bios, table + (cond * 9) + 5);
  u8 dmask = nvbios_rd08(bios, table + (cond * 9) + 7);
  u8 value = nvbios_rd08(bios, table + (cond * 9) + 8);
  u8 ioval = (init_rdvgai(init, port, index) & mask) >> shift;
  return (nvbios_rd08(bios, data + ioval) & dmask) == value;
 }
 return 0;
}

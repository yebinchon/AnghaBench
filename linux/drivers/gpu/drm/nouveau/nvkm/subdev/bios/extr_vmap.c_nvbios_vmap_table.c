
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct nvkm_bios {int dummy; } ;
struct bit_entry {int version; scalar_t__ offset; } ;


 int bit_entry (struct nvkm_bios*,char,struct bit_entry*) ;
 int nvbios_rd08 (struct nvkm_bios*,scalar_t__) ;
 scalar_t__ nvbios_rd32 (struct nvkm_bios*,scalar_t__) ;

u32
nvbios_vmap_table(struct nvkm_bios *bios, u8 *ver, u8 *hdr, u8 *cnt, u8 *len)
{
 struct bit_entry bit_P;
 u32 vmap = 0;

 if (!bit_entry(bios, 'P', &bit_P)) {
  if (bit_P.version == 2) {
   vmap = nvbios_rd32(bios, bit_P.offset + 0x20);
   if (vmap) {
    *ver = nvbios_rd08(bios, vmap + 0);
    switch (*ver) {
    case 0x10:
    case 0x20:
     *hdr = nvbios_rd08(bios, vmap + 1);
     *cnt = nvbios_rd08(bios, vmap + 3);
     *len = nvbios_rd08(bios, vmap + 2);
     return vmap;
    default:
     break;
    }
   }
  }
 }

 return 0;
}

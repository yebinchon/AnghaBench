
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct nvkm_bios {int dummy; } ;
struct bit_entry {int version; int length; scalar_t__ offset; } ;


 int bit_entry (struct nvkm_bios*,char,struct bit_entry*) ;
 int nvbios_rd08 (struct nvkm_bios*,scalar_t__) ;
 scalar_t__ nvbios_rd32 (struct nvkm_bios*,scalar_t__) ;

u32
nvbios_cstepTe(struct nvkm_bios *bios,
        u8 *ver, u8 *hdr, u8 *cnt, u8 *len, u8 *xnr, u8 *xsz)
{
 struct bit_entry bit_P;
 u32 cstep = 0;

 if (!bit_entry(bios, 'P', &bit_P)) {
  if (bit_P.version == 2 && bit_P.length >= 0x38)
   cstep = nvbios_rd32(bios, bit_P.offset + 0x34);

  if (cstep) {
   *ver = nvbios_rd08(bios, cstep + 0);
   switch (*ver) {
   case 0x10:
    *hdr = nvbios_rd08(bios, cstep + 1);
    *cnt = nvbios_rd08(bios, cstep + 3);
    *len = nvbios_rd08(bios, cstep + 2);
    *xnr = nvbios_rd08(bios, cstep + 5);
    *xsz = nvbios_rd08(bios, cstep + 4);
    return cstep;
   default:
    break;
   }
  }
 }

 return 0;
}

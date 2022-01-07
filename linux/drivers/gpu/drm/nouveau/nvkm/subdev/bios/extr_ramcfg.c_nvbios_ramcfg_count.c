
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nvkm_bios {int dummy; } ;
struct bit_entry {int version; int length; scalar_t__ offset; } ;


 int bit_entry (struct nvkm_bios*,char,struct bit_entry*) ;
 int nvbios_rd08 (struct nvkm_bios*,scalar_t__) ;

u8
nvbios_ramcfg_count(struct nvkm_bios *bios)
{
 struct bit_entry bit_M;

 if (!bit_entry(bios, 'M', &bit_M)) {
  if (bit_M.version == 1 && bit_M.length >= 5)
   return nvbios_rd08(bios, bit_M.offset + 2);
  if (bit_M.version == 2 && bit_M.length >= 3)
   return nvbios_rd08(bios, bit_M.offset + 0);
 }

 return 0x00;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_bios {int dummy; } ;
struct bit_entry {int version; int length; scalar_t__ offset; } ;


 int bit_entry (struct nvkm_bios*,char,struct bit_entry*) ;
 int nvbios_rd32 (struct nvkm_bios*,scalar_t__) ;

__attribute__((used)) static u32
nvbios_vpstate_offset(struct nvkm_bios *b)
{
 struct bit_entry bit_P;

 if (!bit_entry(b, 'P', &bit_P)) {
  if (bit_P.version == 2 && bit_P.length >= 0x3c)
   return nvbios_rd32(b, bit_P.offset + 0x38);
 }

 return 0x0000;
}

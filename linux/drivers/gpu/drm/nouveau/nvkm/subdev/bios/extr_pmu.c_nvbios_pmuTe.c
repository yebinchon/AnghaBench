
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
nvbios_pmuTe(struct nvkm_bios *bios, u8 *ver, u8 *hdr, u8 *cnt, u8 *len)
{
 struct bit_entry bit_p;
 u32 data = 0;

 if (!bit_entry(bios, 'p', &bit_p)) {
  if (bit_p.version == 2 && bit_p.length >= 4)
   data = nvbios_rd32(bios, bit_p.offset + 0x00);
  if (data) {
   *ver = nvbios_rd08(bios, data + 0x00);
   *hdr = nvbios_rd08(bios, data + 0x01);
   *len = nvbios_rd08(bios, data + 0x02);
   *cnt = nvbios_rd08(bios, data + 0x03);
  }
 }

 return data;
}

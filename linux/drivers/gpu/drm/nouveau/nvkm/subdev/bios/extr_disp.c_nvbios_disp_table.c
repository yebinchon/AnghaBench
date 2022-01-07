
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct nvkm_bios {int dummy; } ;
struct bit_entry {int version; int offset; } ;


 int bit_entry (struct nvkm_bios*,unsigned char,struct bit_entry*) ;
 int nvbios_rd08 (struct nvkm_bios*,int) ;
 int nvbios_rd16 (struct nvkm_bios*,int ) ;

u16
nvbios_disp_table(struct nvkm_bios *bios,
    u8 *ver, u8 *hdr, u8 *cnt, u8 *len, u8 *sub)
{
 struct bit_entry U;

 if (!bit_entry(bios, 'U', &U)) {
  if (U.version == 1) {
   u16 data = nvbios_rd16(bios, U.offset);
   if (data) {
    *ver = nvbios_rd08(bios, data + 0x00);
    switch (*ver) {
    case 0x20:
    case 0x21:
    case 0x22:
     *hdr = nvbios_rd08(bios, data + 0x01);
     *len = nvbios_rd08(bios, data + 0x02);
     *cnt = nvbios_rd08(bios, data + 0x03);
     *sub = nvbios_rd08(bios, data + 0x04);
     return data;
    default:
     break;
    }
   }
  }
 }

 return 0x0000;
}

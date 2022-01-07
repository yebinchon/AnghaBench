
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct nvkm_bios {int dummy; } ;
struct bit_entry {int version; int length; int offset; } ;


 int bit_entry (struct nvkm_bios*,char,struct bit_entry*) ;
 int nvbios_rd08 (struct nvkm_bios*,int) ;
 int nvbios_rd16 (struct nvkm_bios*,int ) ;

u16
nvbios_dp_table(struct nvkm_bios *bios, u8 *ver, u8 *hdr, u8 *cnt, u8 *len)
{
 struct bit_entry d;

 if (!bit_entry(bios, 'd', &d)) {
  if (d.version == 1 && d.length >= 2) {
   u16 data = nvbios_rd16(bios, d.offset);
   if (data) {
    *ver = nvbios_rd08(bios, data + 0x00);
    switch (*ver) {
    case 0x20:
    case 0x21:
    case 0x30:
    case 0x40:
    case 0x41:
    case 0x42:
     *hdr = nvbios_rd08(bios, data + 0x01);
     *len = nvbios_rd08(bios, data + 0x02);
     *cnt = nvbios_rd08(bios, data + 0x03);
     return data;
    default:
     break;
    }
   }
  }
 }

 return 0x0000;
}

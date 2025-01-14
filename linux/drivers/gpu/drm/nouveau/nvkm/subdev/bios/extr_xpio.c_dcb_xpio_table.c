
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct nvkm_bios {int dummy; } ;


 int dcb_xpiod_table (struct nvkm_bios*,int*,int*,int*,int*) ;
 int nvbios_rd08 (struct nvkm_bios*,int) ;
 int nvbios_rd16 (struct nvkm_bios*,int) ;

u16
dcb_xpio_table(struct nvkm_bios *bios, u8 idx,
        u8 *ver, u8 *hdr, u8 *cnt, u8 *len)
{
 u16 data = dcb_xpiod_table(bios, ver, hdr, cnt, len);
 if (data && idx < *cnt) {
  u16 xpio = nvbios_rd16(bios, data + *hdr + (idx * *len));
  if (xpio) {
   *ver = nvbios_rd08(bios, data + 0x00);
   *hdr = nvbios_rd08(bios, data + 0x01);
   *cnt = nvbios_rd08(bios, data + 0x02);
   *len = nvbios_rd08(bios, data + 0x03);
   return xpio;
  }
 }
 return 0x0000;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct nvkm_bios {int subdev; } ;


 int dcb_table (struct nvkm_bios*,int*,int*,int*,int*) ;
 int nvbios_rd08 (struct nvkm_bios*,int) ;
 int nvbios_rd16 (struct nvkm_bios*,int) ;
 int nvkm_warn (int *,char*,int) ;

u16
dcb_i2c_table(struct nvkm_bios *bios, u8 *ver, u8 *hdr, u8 *cnt, u8 *len)
{
 u16 i2c = 0x0000;
 u16 dcb = dcb_table(bios, ver, hdr, cnt, len);
 if (dcb) {
  if (*ver >= 0x15)
   i2c = nvbios_rd16(bios, dcb + 2);
  if (*ver >= 0x30)
   i2c = nvbios_rd16(bios, dcb + 4);
 }

 if (i2c && *ver >= 0x42) {
  nvkm_warn(&bios->subdev, "ccb %02x not supported\n", *ver);
  return 0x0000;
 }

 if (i2c && *ver >= 0x30) {
  *ver = nvbios_rd08(bios, i2c + 0);
  *hdr = nvbios_rd08(bios, i2c + 1);
  *cnt = nvbios_rd08(bios, i2c + 2);
  *len = nvbios_rd08(bios, i2c + 3);
 } else {
  *ver = *ver;
  *hdr = 0;
  *cnt = 16;
  *len = 4;
 }

 return i2c;
}

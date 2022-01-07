
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_device {scalar_t__ card_type; } ;
struct nvkm_bios {struct nvkm_subdev subdev; } ;


 scalar_t__ NV_04 ;
 int nvbios_memcmp (struct nvkm_bios*,int,char*,int) ;
 int nvbios_rd08 (struct nvkm_bios*,int) ;
 int nvbios_rd16 (struct nvkm_bios*,int) ;
 int nvbios_rd32 (struct nvkm_bios*,int) ;
 int nvkm_debug (struct nvkm_subdev*,char*) ;
 int nvkm_warn (struct nvkm_subdev*,char*,...) ;

u16
dcb_table(struct nvkm_bios *bios, u8 *ver, u8 *hdr, u8 *cnt, u8 *len)
{
 struct nvkm_subdev *subdev = &bios->subdev;
 struct nvkm_device *device = subdev->device;
 u16 dcb = 0x0000;

 if (device->card_type > NV_04)
  dcb = nvbios_rd16(bios, 0x36);
 if (!dcb) {
  nvkm_warn(subdev, "DCB table not found\n");
  return dcb;
 }

 *ver = nvbios_rd08(bios, dcb);

 if (*ver >= 0x42) {
  nvkm_warn(subdev, "DCB version 0x%02x unknown\n", *ver);
  return 0x0000;
 } else
 if (*ver >= 0x30) {
  if (nvbios_rd32(bios, dcb + 6) == 0x4edcbdcb) {
   *hdr = nvbios_rd08(bios, dcb + 1);
   *cnt = nvbios_rd08(bios, dcb + 2);
   *len = nvbios_rd08(bios, dcb + 3);
   return dcb;
  }
 } else
 if (*ver >= 0x20) {
  if (nvbios_rd32(bios, dcb + 4) == 0x4edcbdcb) {
   u16 i2c = nvbios_rd16(bios, dcb + 2);
   *hdr = 8;
   *cnt = (i2c - dcb) / 8;
   *len = 8;
   return dcb;
  }
 } else
 if (*ver >= 0x15) {
  if (!nvbios_memcmp(bios, dcb - 7, "DEV_REC", 7)) {
   u16 i2c = nvbios_rd16(bios, dcb + 2);
   *hdr = 4;
   *cnt = (i2c - dcb) / 10;
   *len = 10;
   return dcb;
  }
 } else {
  nvkm_debug(subdev, "DCB contains no useful data\n");
  return 0x0000;
 }

 nvkm_warn(subdev, "DCB header validation failed\n");
 return 0x0000;
}

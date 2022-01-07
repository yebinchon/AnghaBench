
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct nvkm_bios {int dummy; } ;
struct nvbios_pcirT {int vendor_id; int device_id; int* class_code; int image_size; int image_rev; int image_type; int last; } ;


 int memset (struct nvbios_pcirT*,int,int) ;
 scalar_t__ nvbios_pcirTe (struct nvkm_bios*,scalar_t__,int *,int *) ;
 int nvbios_rd08 (struct nvkm_bios*,scalar_t__) ;
 int nvbios_rd16 (struct nvkm_bios*,scalar_t__) ;

u32
nvbios_pcirTp(struct nvkm_bios *bios, u32 base, u8 *ver, u16 *hdr,
       struct nvbios_pcirT *info)
{
 u32 data = nvbios_pcirTe(bios, base, ver, hdr);
 memset(info, 0x00, sizeof(*info));
 if (data) {
  info->vendor_id = nvbios_rd16(bios, data + 0x04);
  info->device_id = nvbios_rd16(bios, data + 0x06);
  info->class_code[0] = nvbios_rd08(bios, data + 0x0d);
  info->class_code[1] = nvbios_rd08(bios, data + 0x0e);
  info->class_code[2] = nvbios_rd08(bios, data + 0x0f);
  info->image_size = nvbios_rd16(bios, data + 0x10) * 512;
  info->image_rev = nvbios_rd16(bios, data + 0x12);
  info->image_type = nvbios_rd08(bios, data + 0x14);
  info->last = nvbios_rd08(bios, data + 0x15) & 0x80;
 }
 return data;
}

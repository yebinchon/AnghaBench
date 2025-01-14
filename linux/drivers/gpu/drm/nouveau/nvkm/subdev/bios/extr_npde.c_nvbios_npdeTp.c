
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct nvkm_bios {int dummy; } ;
struct nvbios_npdeT {int image_size; int last; } ;


 int memset (struct nvbios_npdeT*,int,int) ;
 scalar_t__ nvbios_npdeTe (struct nvkm_bios*,scalar_t__) ;
 int nvbios_rd08 (struct nvkm_bios*,scalar_t__) ;
 int nvbios_rd16 (struct nvkm_bios*,scalar_t__) ;

u32
nvbios_npdeTp(struct nvkm_bios *bios, u32 base, struct nvbios_npdeT *info)
{
 u32 data = nvbios_npdeTe(bios, base);
 memset(info, 0x00, sizeof(*info));
 if (data) {
  info->image_size = nvbios_rd16(bios, data + 0x08) * 512;
  info->last = nvbios_rd08(bios, data + 0x0a) & 0x80;
 }
 return data;
}

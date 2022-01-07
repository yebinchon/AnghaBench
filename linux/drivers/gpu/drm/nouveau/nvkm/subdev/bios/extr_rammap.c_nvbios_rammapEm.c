
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct nvkm_bios {int dummy; } ;
struct nvbios_ramcfg {scalar_t__ rammap_min; scalar_t__ rammap_max; } ;


 int nvbios_rammapEp (struct nvkm_bios*,int ,int *,int *,int *,int *,struct nvbios_ramcfg*) ;

u32
nvbios_rammapEm(struct nvkm_bios *bios, u16 mhz,
  u8 *ver, u8 *hdr, u8 *cnt, u8 *len, struct nvbios_ramcfg *info)
{
 int idx = 0;
 u32 data;
 while ((data = nvbios_rammapEp(bios, idx++, ver, hdr, cnt, len, info))) {
  if (mhz >= info->rammap_min && mhz <= info->rammap_max)
   break;
 }
 return data;
}

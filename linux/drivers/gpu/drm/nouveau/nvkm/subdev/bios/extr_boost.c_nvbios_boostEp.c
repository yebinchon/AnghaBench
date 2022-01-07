
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct nvkm_bios {int dummy; } ;
struct nvbios_boostE {int pstate; int min; int max; } ;


 int memset (struct nvbios_boostE*,int,int) ;
 scalar_t__ nvbios_boostEe (struct nvkm_bios*,int,int *,int *,int *,int *) ;
 int nvbios_rd16 (struct nvkm_bios*,scalar_t__) ;

u32
nvbios_boostEp(struct nvkm_bios *bios, int idx,
        u8 *ver, u8 *hdr, u8 *cnt, u8 *len, struct nvbios_boostE *info)
{
 u32 data = nvbios_boostEe(bios, idx, ver, hdr, cnt, len);
 memset(info, 0x00, sizeof(*info));
 if (data) {
  info->pstate = (nvbios_rd16(bios, data + 0x00) & 0x01e0) >> 5;
  info->min = nvbios_rd16(bios, data + 0x02) * 1000;
  info->max = nvbios_rd16(bios, data + 0x04) * 1000;
 }
 return data;
}

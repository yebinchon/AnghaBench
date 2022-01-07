
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct nvkm_bios {int dummy; } ;
struct nvbios_boostE {scalar_t__ pstate; } ;


 scalar_t__ nvbios_boostEp (struct nvkm_bios*,int ,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,struct nvbios_boostE*) ;

u32
nvbios_boostEm(struct nvkm_bios *bios, u8 pstate,
        u8 *ver, u8 *hdr, u8 *cnt, u8 *len, struct nvbios_boostE *info)
{
 u32 data, idx = 0;
 while ((data = nvbios_boostEp(bios, idx++, ver, hdr, cnt, len, info))) {
  if (info->pstate == pstate)
   break;
 }
 return data;
}

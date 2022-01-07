
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct nvkm_bios {int dummy; } ;


 scalar_t__ nvbios_pmuTe (struct nvkm_bios*,int*,int*,int*,int*) ;

u32
nvbios_pmuEe(struct nvkm_bios *bios, int idx, u8 *ver, u8 *hdr)
{
 u8 cnt, len;
 u32 data = nvbios_pmuTe(bios, ver, hdr, &cnt, &len);
 if (data && idx < cnt) {
  data = data + *hdr + (idx * len);
  *hdr = len;
  return data;
 }
 return 0;
}

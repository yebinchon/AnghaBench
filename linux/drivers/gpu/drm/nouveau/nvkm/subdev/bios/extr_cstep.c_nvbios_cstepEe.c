
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct nvkm_bios {int dummy; } ;


 scalar_t__ nvbios_cstepTe (struct nvkm_bios*,int*,int*,int*,int*,int*,int*) ;

u32
nvbios_cstepEe(struct nvkm_bios *bios, int idx, u8 *ver, u8 *hdr)
{
 u8 cnt, len, xnr, xsz;
 u32 data = nvbios_cstepTe(bios, ver, hdr, &cnt, &len, &xnr, &xsz);
 if (data && idx < cnt) {
  data = data + *hdr + (idx * len);
  *hdr = len;
  return data;
 }
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct nvkm_bios {int dummy; } ;


 int nvbios_P0260Te (struct nvkm_bios*,int*,int*,int*,int*,int*,int*) ;

u32
nvbios_P0260Xe(struct nvkm_bios *bios, int idx, u8 *ver, u8 *xsz)
{
 u8 hdr, cnt, len, xnr;
 u32 data = nvbios_P0260Te(bios, ver, &hdr, &cnt, &len, &xnr, xsz);
 if (data && idx < xnr)
  return data + hdr + (cnt * len) + (idx * *xsz);
 return 0x00000000;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct nvkm_bios {int dummy; } ;


 int nvbios_connTe (struct nvkm_bios*,int*,int*,int*,int*) ;

u32
nvbios_connEe(struct nvkm_bios *bios, u8 idx, u8 *ver, u8 *len)
{
 u8 hdr, cnt;
 u32 data = nvbios_connTe(bios, ver, &hdr, &cnt, len);
 if (data && idx < cnt)
  return data + hdr + (idx * *len);
 return 0x00000000;
}

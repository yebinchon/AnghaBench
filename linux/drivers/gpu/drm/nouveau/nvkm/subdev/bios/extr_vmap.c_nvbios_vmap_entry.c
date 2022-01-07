
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct nvkm_bios {int dummy; } ;


 int nvbios_vmap_table (struct nvkm_bios*,int*,int*,int*,int*) ;

u32
nvbios_vmap_entry(struct nvkm_bios *bios, int idx, u8 *ver, u8 *len)
{
 u8 hdr, cnt;
 u32 vmap = nvbios_vmap_table(bios, ver, &hdr, &cnt, len);
 if (vmap && idx < cnt) {
  vmap = vmap + hdr + (idx * *len);
  return vmap;
 }
 return 0;
}

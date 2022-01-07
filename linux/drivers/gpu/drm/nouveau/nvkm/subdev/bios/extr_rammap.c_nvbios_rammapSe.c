
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct nvkm_bios {int dummy; } ;



u32
nvbios_rammapSe(struct nvkm_bios *bios, u32 data,
  u8 ever, u8 ehdr, u8 ecnt, u8 elen, int idx, u8 *ver, u8 *hdr)
{
 if (idx < ecnt) {
  data = data + ehdr + (idx * elen);
  *ver = ever;
  *hdr = elen;
  return data;
 }
 return 0;
}

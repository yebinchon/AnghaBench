
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct nvkm_bios {int dummy; } ;



u16
nvbios_ocfg_entry(struct nvkm_bios *bios, u16 outp, u8 idx,
    u8 *ver, u8 *hdr, u8 *cnt, u8 *len)
{
 if (idx < *cnt)
  return outp + *hdr + (idx * *len);
 return 0x0000;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct nvkm_bios {int dummy; } ;
struct nvbios_dpcfg {int dummy; } ;


 scalar_t__ nvbios_dpcfg_entry (struct nvkm_bios*,scalar_t__,int,int*,int*,int*,int*) ;
 scalar_t__ nvbios_dpcfg_parse (struct nvkm_bios*,scalar_t__,int,int*,int*,int*,int*,struct nvbios_dpcfg*) ;
 int nvbios_rd08 (struct nvkm_bios*,scalar_t__) ;

u16
nvbios_dpcfg_match(struct nvkm_bios *bios, u16 outp, u8 pc, u8 vs, u8 pe,
     u8 *ver, u8 *hdr, u8 *cnt, u8 *len,
     struct nvbios_dpcfg *info)
{
 u8 idx = 0xff;
 u16 data;

 if (*ver >= 0x30) {
  static const u8 vsoff[] = { 0, 4, 7, 9 };
  idx = (pc * 10) + vsoff[vs] + pe;
  if (*ver >= 0x40 && *ver <= 0x41 && *hdr >= 0x12)
   idx += nvbios_rd08(bios, outp + 0x11) * 40;
  else
  if (*ver >= 0x42)
   idx += nvbios_rd08(bios, outp + 0x11) * 10;
 } else {
  while ((data = nvbios_dpcfg_entry(bios, outp, ++idx,
        ver, hdr, cnt, len))) {
   if (nvbios_rd08(bios, data + 0x00) == vs &&
       nvbios_rd08(bios, data + 0x01) == pe)
    break;
  }
 }

 return nvbios_dpcfg_parse(bios, outp, idx, ver, hdr, cnt, len, info);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;
struct nvkm_bios {int dummy; } ;
struct nvbios_ocfg {scalar_t__ proto; scalar_t__ flags; } ;


 scalar_t__ nvbios_ocfg_parse (struct nvkm_bios*,scalar_t__,int ,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,struct nvbios_ocfg*) ;

u16
nvbios_ocfg_match(struct nvkm_bios *bios, u16 outp, u8 proto, u8 flags,
    u8 *ver, u8 *hdr, u8 *cnt, u8 *len, struct nvbios_ocfg *info)
{
 u16 data, idx = 0;
 while ((data = nvbios_ocfg_parse(bios, outp, idx++, ver, hdr, cnt, len, info))) {
  if ((info->proto == proto || info->proto == 0xff) &&
      (info->flags == flags))
   break;
 }
 return data;
}

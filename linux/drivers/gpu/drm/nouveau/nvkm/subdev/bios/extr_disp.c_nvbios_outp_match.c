
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;
struct nvkm_bios {int dummy; } ;
struct nvbios_outp {scalar_t__ type; scalar_t__ mask; } ;


 scalar_t__ nvbios_outp_parse (struct nvkm_bios*,int ,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,struct nvbios_outp*) ;

u16
nvbios_outp_match(struct nvkm_bios *bios, u16 type, u16 mask,
    u8 *ver, u8 *hdr, u8 *cnt, u8 *len, struct nvbios_outp *info)
{
 u16 data, idx = 0;
 while ((data = nvbios_outp_parse(bios, idx++, ver, hdr, cnt, len, info)) || *ver) {
  if (data && info->type == type) {
   if ((info->mask & mask) == mask)
    break;
  }
 }
 return data;
}

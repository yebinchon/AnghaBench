
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct nvkm_bios {int dummy; } ;
struct nvbios_ocfg {void** clkcmp; void* flags; int proto; } ;


 scalar_t__ nvbios_ocfg_entry (struct nvkm_bios*,scalar_t__,int ,int *,int *,int *,int *) ;
 int nvbios_rd08 (struct nvkm_bios*,scalar_t__) ;
 void* nvbios_rd16 (struct nvkm_bios*,scalar_t__) ;

u16
nvbios_ocfg_parse(struct nvkm_bios *bios, u16 outp, u8 idx,
    u8 *ver, u8 *hdr, u8 *cnt, u8 *len, struct nvbios_ocfg *info)
{
 u16 data = nvbios_ocfg_entry(bios, outp, idx, ver, hdr, cnt, len);
 if (data) {
  info->proto = nvbios_rd08(bios, data + 0x00);
  info->flags = nvbios_rd16(bios, data + 0x01);
  info->clkcmp[0] = nvbios_rd16(bios, data + 0x02);
  info->clkcmp[1] = nvbios_rd16(bios, data + 0x04);
 }
 return data;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct nvkm_bios {int dummy; } ;
struct nvbios_disp {int data; } ;


 int nvbios_disp_entry (struct nvkm_bios*,int,int*,int*,int*) ;
 int nvbios_rd16 (struct nvkm_bios*,int) ;

u16
nvbios_disp_parse(struct nvkm_bios *bios, u8 idx, u8 *ver, u8 *len, u8 *sub,
    struct nvbios_disp *info)
{
 u16 data = nvbios_disp_entry(bios, idx, ver, len, sub);
 if (data && *len >= 2) {
  info->data = nvbios_rd16(bios, data + 0);
  return data;
 }
 return 0x0000;
}

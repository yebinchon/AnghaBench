
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct nvkm_bios {int dummy; } ;
struct nvbios_M0205E {int type; } ;


 int memset (struct nvbios_M0205E*,int,int) ;
 int nvbios_M0205Ee (struct nvkm_bios*,int,int*,int*,int*,int*) ;
 int nvbios_rd08 (struct nvkm_bios*,int) ;

u32
nvbios_M0205Ep(struct nvkm_bios *bios, int idx,
        u8 *ver, u8 *hdr, u8 *cnt, u8 *len,
        struct nvbios_M0205E *info)
{
 u32 data = nvbios_M0205Ee(bios, idx, ver, hdr, cnt, len);
 memset(info, 0x00, sizeof(*info));
 switch (!!data * *ver) {
 case 0x10:
  info->type = nvbios_rd08(bios, data + 0x00) & 0x0f;
  return data;
 default:
  break;
 }
 return 0x00000000;
}

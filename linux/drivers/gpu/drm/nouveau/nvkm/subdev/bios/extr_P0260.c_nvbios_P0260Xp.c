
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct nvkm_bios {int dummy; } ;
struct nvbios_P0260X {int data; } ;


 int memset (struct nvbios_P0260X*,int,int) ;
 int nvbios_P0260Xe (struct nvkm_bios*,int,int*,int*) ;
 int nvbios_rd32 (struct nvkm_bios*,int) ;

u32
nvbios_P0260Xp(struct nvkm_bios *bios, int idx, u8 *ver, u8 *hdr,
        struct nvbios_P0260X *info)
{
 u32 data = nvbios_P0260Xe(bios, idx, ver, hdr);
 memset(info, 0x00, sizeof(*info));
 switch (!!data * *ver) {
 case 0x10:
  info->data = nvbios_rd32(bios, data);
  return data;
 default:
  break;
 }
 return 0x00000000;
}

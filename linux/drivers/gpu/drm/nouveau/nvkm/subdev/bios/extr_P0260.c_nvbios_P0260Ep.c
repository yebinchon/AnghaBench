
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct nvkm_bios {int dummy; } ;
struct nvbios_P0260E {int data; } ;


 int memset (struct nvbios_P0260E*,int,int) ;
 int nvbios_P0260Ee (struct nvkm_bios*,int,int*,int*) ;
 int nvbios_rd32 (struct nvkm_bios*,int) ;

u32
nvbios_P0260Ep(struct nvkm_bios *bios, int idx, u8 *ver, u8 *len,
        struct nvbios_P0260E *info)
{
 u32 data = nvbios_P0260Ee(bios, idx, ver, len);
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

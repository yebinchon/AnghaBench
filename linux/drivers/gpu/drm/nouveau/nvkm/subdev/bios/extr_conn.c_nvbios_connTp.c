
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct nvkm_bios {int dummy; } ;
struct nvbios_connT {int dummy; } ;


 int memset (struct nvbios_connT*,int,int) ;
 int nvbios_connTe (struct nvkm_bios*,int*,int*,int*,int*) ;

u32
nvbios_connTp(struct nvkm_bios *bios, u8 *ver, u8 *hdr, u8 *cnt, u8 *len,
       struct nvbios_connT *info)
{
 u32 data = nvbios_connTe(bios, ver, hdr, cnt, len);
 memset(info, 0x00, sizeof(*info));
 switch (!!data * *ver) {
 case 0x30:
 case 0x40:
  return data;
 default:
  break;
 }
 return 0x00000000;
}

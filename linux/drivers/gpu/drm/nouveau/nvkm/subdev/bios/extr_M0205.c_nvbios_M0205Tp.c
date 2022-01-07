
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct nvkm_bios {int dummy; } ;
struct nvbios_M0205T {int freq; } ;


 int memset (struct nvbios_M0205T*,int,int) ;
 scalar_t__ nvbios_M0205Te (struct nvkm_bios*,int*,int*,int*,int*,int*,int*) ;
 int nvbios_rd16 (struct nvkm_bios*,scalar_t__) ;

u32
nvbios_M0205Tp(struct nvkm_bios *bios,
        u8 *ver, u8 *hdr, u8 *cnt, u8 *len, u8 *snr, u8 *ssz,
        struct nvbios_M0205T *info)
{
 u32 data = nvbios_M0205Te(bios, ver, hdr, cnt, len, snr, ssz);
 memset(info, 0x00, sizeof(*info));
 switch (!!data * *ver) {
 case 0x10:
  info->freq = nvbios_rd16(bios, data + 0x06);
  break;
 default:
  break;
 }
 return data;
}

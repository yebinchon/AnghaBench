
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct nvkm_bios {int dummy; } ;
struct nvbios_pmuE {int data; int type; } ;


 int memset (struct nvbios_pmuE*,int,int) ;
 scalar_t__ nvbios_pmuEe (struct nvkm_bios*,int,int*,int*) ;
 int nvbios_rd08 (struct nvkm_bios*,scalar_t__) ;
 int nvbios_rd32 (struct nvkm_bios*,scalar_t__) ;

u32
nvbios_pmuEp(struct nvkm_bios *bios, int idx, u8 *ver, u8 *hdr,
      struct nvbios_pmuE *info)
{
 u32 data = nvbios_pmuEe(bios, idx, ver, hdr);
 memset(info, 0x00, sizeof(*info));
 switch (!!data * *ver) {
 default:
  info->type = nvbios_rd08(bios, data + 0x00);
  info->data = nvbios_rd32(bios, data + 0x02);
  break;
 }
 return data;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct nvkm_bios {int dummy; } ;


 int extdev_table (struct nvkm_bios*,int*,int*,int*,int*) ;
 int nvbios_rd08 (struct nvkm_bios*,int) ;

bool
nvbios_extdev_skip_probe(struct nvkm_bios *bios)
{
 u8 ver, hdr, len, cnt;
 u16 data = extdev_table(bios, &ver, &hdr, &len, &cnt);
 if (data && ver == 0x40 && hdr >= 5) {
  u8 flags = nvbios_rd08(bios, data - hdr + 4);
  if (flags & 1)
   return 1;
 }
 return 0;
}

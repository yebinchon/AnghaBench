
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct nvkm_subdev {int dummy; } ;
struct nvkm_bios {struct nvkm_subdev subdev; } ;
struct nvbios_M0203T {int type; } ;
struct nvbios_M0203E {int strap; } ;



 int nvbios_M0203Ep (struct nvkm_bios*,int,int*,int*,struct nvbios_M0203E*) ;
 int nvbios_M0203Tp (struct nvkm_bios*,int*,int*,int*,int*,struct nvbios_M0203T*) ;
 int nvkm_warn (struct nvkm_subdev*,char*,...) ;

u32
nvbios_M0203Em(struct nvkm_bios *bios, u8 ramcfg, u8 *ver, u8 *hdr,
        struct nvbios_M0203E *info)
{
 struct nvkm_subdev *subdev = &bios->subdev;
 struct nvbios_M0203T M0203T;
 u8 cnt, len, idx = 0xff;
 u32 data;

 if (!nvbios_M0203Tp(bios, ver, hdr, &cnt, &len, &M0203T)) {
  nvkm_warn(subdev, "M0203T not found\n");
  return 0x00000000;
 }

 while ((data = nvbios_M0203Ep(bios, ++idx, ver, hdr, info))) {
  switch (M0203T.type) {
  case 128:
   if (info->strap != ramcfg)
    continue;
   return data;
  default:
   nvkm_warn(subdev, "M0203T type %02x\n", M0203T.type);
   return 0x00000000;
  }
 }

 return data;
}

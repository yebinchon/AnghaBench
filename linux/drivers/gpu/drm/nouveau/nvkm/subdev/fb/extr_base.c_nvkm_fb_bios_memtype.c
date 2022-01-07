
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_device {int dummy; } ;
struct nvkm_bios {struct nvkm_subdev subdev; } ;
struct nvbios_M0203E {int type; } ;
 int NVKM_RAM_TYPE_DDR2 ;
 int NVKM_RAM_TYPE_DDR3 ;
 int NVKM_RAM_TYPE_GDDR3 ;
 int NVKM_RAM_TYPE_GDDR5 ;
 int NVKM_RAM_TYPE_GDDR5X ;
 int NVKM_RAM_TYPE_GDDR6 ;
 int NVKM_RAM_TYPE_HBM2 ;
 int NVKM_RAM_TYPE_UNKNOWN ;
 scalar_t__ nvbios_M0203Em (struct nvkm_bios*,int const,int*,int*,struct nvbios_M0203E*) ;
 int nvkm_rd32 (struct nvkm_device*,int) ;
 int nvkm_warn (struct nvkm_subdev*,char*,...) ;

int
nvkm_fb_bios_memtype(struct nvkm_bios *bios)
{
 struct nvkm_subdev *subdev = &bios->subdev;
 struct nvkm_device *device = subdev->device;
 const u8 ramcfg = (nvkm_rd32(device, 0x101000) & 0x0000003c) >> 2;
 struct nvbios_M0203E M0203E;
 u8 ver, hdr;

 if (nvbios_M0203Em(bios, ramcfg, &ver, &hdr, &M0203E)) {
  switch (M0203E.type) {
  case 134 : return NVKM_RAM_TYPE_DDR2;
  case 133 : return NVKM_RAM_TYPE_DDR3;
  case 132 : return NVKM_RAM_TYPE_GDDR3;
  case 131 : return NVKM_RAM_TYPE_GDDR5;
  case 130: return NVKM_RAM_TYPE_GDDR5X;
  case 129 : return NVKM_RAM_TYPE_GDDR6;
  case 128 : return NVKM_RAM_TYPE_HBM2;
  default:
   nvkm_warn(subdev, "M0203E type %02x\n", M0203E.type);
   return NVKM_RAM_TYPE_UNKNOWN;
  }
 }

 nvkm_warn(subdev, "M0203E not matched!\n");
 return NVKM_RAM_TYPE_UNKNOWN;
}

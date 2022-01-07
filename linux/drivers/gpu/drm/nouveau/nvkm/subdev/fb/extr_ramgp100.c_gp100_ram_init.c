
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_ram {TYPE_1__* fb; } ;
struct nvkm_device {struct nvkm_bios* bios; } ;
struct nvkm_bios {int dummy; } ;
struct TYPE_2__ {struct nvkm_subdev subdev; } ;


 int EINVAL ;
 int nvbios_init (struct nvkm_subdev*,int) ;
 int nvbios_rammapTe (struct nvkm_bios*,int*,int*,int*,int*,int*,int*) ;
 int nvbios_rd08 (struct nvkm_bios*,int) ;
 int nvbios_rd32 (struct nvkm_bios*,int) ;
 int nvkm_mask (struct nvkm_device*,int,int,int) ;
 int nvkm_rd32 (struct nvkm_device*,int) ;
 int nvkm_wr32 (struct nvkm_device*,int,int) ;

__attribute__((used)) static int
gp100_ram_init(struct nvkm_ram *ram)
{
 struct nvkm_subdev *subdev = &ram->fb->subdev;
 struct nvkm_device *device = subdev->device;
 struct nvkm_bios *bios = device->bios;
 u8 ver, hdr, cnt, len, snr, ssz;
 u32 data;
 int i;
 data = nvbios_rammapTe(bios, &ver, &hdr, &cnt, &len, &snr, &ssz);
 if (!data || hdr < 0x15)
  return -EINVAL;

 cnt = nvbios_rd08(bios, data + 0x14);
 data = nvbios_rd32(bios, data + 0x10);
 if (cnt) {
  u32 save = nvkm_rd32(device, 0x9a065c) & 0x000000f0;
  for (i = 0; i < cnt; i++, data += 4) {
   if (i != save >> 4) {
    nvkm_mask(device, 0x9a065c, 0x000000f0, i << 4);
    nvbios_init(subdev, nvbios_rd32(bios, data));
   }
  }
  nvkm_mask(device, 0x9a065c, 0x000000f0, save);
 }

 nvkm_mask(device, 0x9a0584, 0x11000000, 0x00000000);
 nvkm_wr32(device, 0x10ecc0, 0xffffffff);
 nvkm_mask(device, 0x9a0160, 0x00000010, 0x00000010);
 return 0;
}

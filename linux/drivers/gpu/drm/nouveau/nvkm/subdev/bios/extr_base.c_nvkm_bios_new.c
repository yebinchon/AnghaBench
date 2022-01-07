
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_device {int dummy; } ;
struct TYPE_2__ {void* patch; void* micro; void* minor; void* chip; void* major; } ;
struct nvkm_bios {TYPE_1__ version; int subdev; void* bmp_offset; void* bit_offset; int size; int data; int imaged_addr; int image0_size; } ;
struct nvbios_image {int type; int base; int size; } ;
struct bit_entry {int length; void* offset; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int bit_entry (struct nvkm_bios*,char,struct bit_entry*) ;
 int bmp_version (struct nvkm_bios*) ;
 struct nvkm_bios* kzalloc (int,int ) ;
 void* nvbios_findstr (int ,int ,char*,int) ;
 scalar_t__ nvbios_image (struct nvkm_bios*,int ,struct nvbios_image*) ;
 void* nvbios_rd08 (struct nvkm_bios*,void*) ;
 int nvbios_shadow (struct nvkm_bios*) ;
 int nvkm_bios ;
 int nvkm_debug (int *,char*,...) ;
 int nvkm_info (int *,char*,void*,void*,void*,void*,void*) ;
 int nvkm_subdev_ctor (int *,struct nvkm_device*,int,int *) ;

int
nvkm_bios_new(struct nvkm_device *device, int index, struct nvkm_bios **pbios)
{
 struct nvkm_bios *bios;
 struct nvbios_image image;
 struct bit_entry bit_i;
 int ret, idx = 0;

 if (!(bios = *pbios = kzalloc(sizeof(*bios), GFP_KERNEL)))
  return -ENOMEM;
 nvkm_subdev_ctor(&nvkm_bios, device, index, &bios->subdev);

 ret = nvbios_shadow(bios);
 if (ret)
  return ret;




 if (nvbios_image(bios, idx++, &image)) {
  bios->image0_size = image.size;
  while (nvbios_image(bios, idx++, &image)) {
   if (image.type == 0xe0) {
    bios->imaged_addr = image.base;
    break;
   }
  }
 }


 bios->bmp_offset = nvbios_findstr(bios->data, bios->size,
       "\xff\x7f""NV\0", 5);
 if (bios->bmp_offset) {
  nvkm_debug(&bios->subdev, "BMP version %x.%x\n",
      bmp_version(bios) >> 8,
      bmp_version(bios) & 0xff);
 }

 bios->bit_offset = nvbios_findstr(bios->data, bios->size,
       "\xff\xb8""BIT", 5);
 if (bios->bit_offset)
  nvkm_debug(&bios->subdev, "BIT signature found\n");


 if (!bit_entry(bios, 'i', &bit_i) && bit_i.length >= 4) {
  bios->version.major = nvbios_rd08(bios, bit_i.offset + 3);
  bios->version.chip = nvbios_rd08(bios, bit_i.offset + 2);
  bios->version.minor = nvbios_rd08(bios, bit_i.offset + 1);
  bios->version.micro = nvbios_rd08(bios, bit_i.offset + 0);
  bios->version.patch = nvbios_rd08(bios, bit_i.offset + 4);
 } else
 if (bmp_version(bios)) {
  bios->version.major = nvbios_rd08(bios, bios->bmp_offset + 13);
  bios->version.chip = nvbios_rd08(bios, bios->bmp_offset + 12);
  bios->version.minor = nvbios_rd08(bios, bios->bmp_offset + 11);
  bios->version.micro = nvbios_rd08(bios, bios->bmp_offset + 10);
 }

 nvkm_info(&bios->subdev, "version %02x.%02x.%02x.%02x.%02x\n",
    bios->version.major, bios->version.chip,
    bios->version.minor, bios->version.micro, bios->version.patch);
 return 0;
}

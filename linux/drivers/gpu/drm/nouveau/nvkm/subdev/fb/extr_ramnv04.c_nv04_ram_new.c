
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct nvkm_ram {int dummy; } ;
struct TYPE_2__ {struct nvkm_device* device; } ;
struct nvkm_fb {TYPE_1__ subdev; } ;
struct nvkm_device {int dummy; } ;
typedef enum nvkm_ram_type { ____Placeholder_nvkm_ram_type } nvkm_ram_type ;


 int NV04_PFB_BOOT_0 ;
 int NV04_PFB_BOOT_0_RAM_AMOUNT ;




 int NVKM_RAM_TYPE_SDRAM ;
 int NVKM_RAM_TYPE_SGRAM ;
 int nv04_ram_func ;
 int nvkm_ram_new_ (int *,struct nvkm_fb*,int,int,struct nvkm_ram**) ;
 int nvkm_rd32 (struct nvkm_device*,int ) ;

int
nv04_ram_new(struct nvkm_fb *fb, struct nvkm_ram **pram)
{
 struct nvkm_device *device = fb->subdev.device;
 u32 boot0 = nvkm_rd32(device, NV04_PFB_BOOT_0);
 u64 size;
 enum nvkm_ram_type type;

 if (boot0 & 0x00000100) {
  size = ((boot0 >> 12) & 0xf) * 2 + 2;
  size *= 1024 * 1024;
 } else {
  switch (boot0 & NV04_PFB_BOOT_0_RAM_AMOUNT) {
  case 130:
   size = 32 * 1024 * 1024;
   break;
  case 131:
   size = 16 * 1024 * 1024;
   break;
  case 128:
   size = 8 * 1024 * 1024;
   break;
  case 129:
   size = 4 * 1024 * 1024;
   break;
  }
 }

 if ((boot0 & 0x00000038) <= 0x10)
  type = NVKM_RAM_TYPE_SGRAM;
 else
  type = NVKM_RAM_TYPE_SDRAM;

 return nvkm_ram_new_(&nv04_ram_func, fb, type, size, pram);
}

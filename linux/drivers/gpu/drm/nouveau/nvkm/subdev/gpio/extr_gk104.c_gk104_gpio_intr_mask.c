
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {struct nvkm_device* device; } ;
struct nvkm_gpio {TYPE_1__ subdev; } ;
struct nvkm_device {int dummy; } ;


 int NVKM_GPIO_HI ;
 int NVKM_GPIO_LO ;
 int nvkm_rd32 (struct nvkm_device*,int) ;
 int nvkm_wr32 (struct nvkm_device*,int,int) ;

__attribute__((used)) static void
gk104_gpio_intr_mask(struct nvkm_gpio *gpio, u32 type, u32 mask, u32 data)
{
 struct nvkm_device *device = gpio->subdev.device;
 u32 inte0 = nvkm_rd32(device, 0x00dc08);
 u32 inte1 = nvkm_rd32(device, 0x00dc88);
 if (type & NVKM_GPIO_LO)
  inte0 = (inte0 & ~(mask << 16)) | (data << 16);
 if (type & NVKM_GPIO_HI)
  inte0 = (inte0 & ~(mask & 0xffff)) | (data & 0xffff);
 mask >>= 16;
 data >>= 16;
 if (type & NVKM_GPIO_LO)
  inte1 = (inte1 & ~(mask << 16)) | (data << 16);
 if (type & NVKM_GPIO_HI)
  inte1 = (inte1 & ~mask) | data;
 nvkm_wr32(device, 0x00dc08, inte0);
 nvkm_wr32(device, 0x00dc88, inte1);
}

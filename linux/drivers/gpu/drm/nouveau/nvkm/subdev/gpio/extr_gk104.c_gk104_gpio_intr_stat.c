
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {struct nvkm_device* device; } ;
struct nvkm_gpio {TYPE_1__ subdev; } ;
struct nvkm_device {int dummy; } ;


 int nvkm_rd32 (struct nvkm_device*,int) ;
 int nvkm_wr32 (struct nvkm_device*,int,int) ;

__attribute__((used)) static void
gk104_gpio_intr_stat(struct nvkm_gpio *gpio, u32 *hi, u32 *lo)
{
 struct nvkm_device *device = gpio->subdev.device;
 u32 intr0 = nvkm_rd32(device, 0x00dc00);
 u32 intr1 = nvkm_rd32(device, 0x00dc80);
 u32 stat0 = nvkm_rd32(device, 0x00dc08) & intr0;
 u32 stat1 = nvkm_rd32(device, 0x00dc88) & intr1;
 *lo = (stat1 & 0xffff0000) | (stat0 >> 16);
 *hi = (stat1 << 16) | (stat0 & 0x0000ffff);
 nvkm_wr32(device, 0x00dc00, intr0);
 nvkm_wr32(device, 0x00dc80, intr1);
}

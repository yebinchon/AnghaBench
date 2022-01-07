
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {struct nvkm_device* device; } ;
struct nvkm_mc {TYPE_1__ subdev; } ;
struct nvkm_device {int dummy; } ;


 int nvkm_rd32 (struct nvkm_device*,int) ;

u32
gf100_mc_intr_stat(struct nvkm_mc *mc)
{
 struct nvkm_device *device = mc->subdev.device;
 u32 intr0 = nvkm_rd32(device, 0x000100);
 u32 intr1 = nvkm_rd32(device, 0x000104);
 return intr0 | intr1;
}

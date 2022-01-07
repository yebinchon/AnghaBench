
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {struct nvkm_device* device; } ;
struct nvkm_mc {TYPE_1__ subdev; } ;
struct nvkm_device {int dummy; } ;


 int nvkm_mask (struct nvkm_device*,int,int ,int ) ;

void
gf100_mc_intr_mask(struct nvkm_mc *mc, u32 mask, u32 stat)
{
 struct nvkm_device *device = mc->subdev.device;
 nvkm_mask(device, 0x000640, mask, stat);
 nvkm_mask(device, 0x000644, mask, stat);
}

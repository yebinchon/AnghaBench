
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct nvkm_device* device; } ;
struct nvkm_mc {TYPE_1__ subdev; } ;
struct nvkm_device {int dummy; } ;


 int nvkm_wr32 (struct nvkm_device*,int,int) ;

void
gf100_mc_intr_rearm(struct nvkm_mc *mc)
{
 struct nvkm_device *device = mc->subdev.device;
 nvkm_wr32(device, 0x000140, 0x00000001);
 nvkm_wr32(device, 0x000144, 0x00000001);
}

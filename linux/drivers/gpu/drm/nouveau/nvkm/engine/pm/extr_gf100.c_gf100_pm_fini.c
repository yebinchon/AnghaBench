
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct nvkm_device* device; } ;
struct TYPE_4__ {TYPE_1__ subdev; } ;
struct nvkm_pm {TYPE_2__ engine; } ;
struct nvkm_device {int dummy; } ;


 int nvkm_mask (struct nvkm_device*,int,int,int) ;

__attribute__((used)) static void
gf100_pm_fini(struct nvkm_pm *pm)
{
 struct nvkm_device *device = pm->engine.subdev.device;
 nvkm_mask(device, 0x000200, 0x10000000, 0x00000000);
 nvkm_mask(device, 0x000200, 0x10000000, 0x10000000);
}

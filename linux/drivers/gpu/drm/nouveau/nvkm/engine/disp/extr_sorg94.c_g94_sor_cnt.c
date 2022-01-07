
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct nvkm_device* device; } ;
struct TYPE_4__ {TYPE_1__ subdev; } ;
struct nvkm_disp {TYPE_2__ engine; } ;
struct nvkm_device {int dummy; } ;


 int nvkm_rd32 (struct nvkm_device*,int) ;

int
g94_sor_cnt(struct nvkm_disp *disp, unsigned long *pmask)
{
 struct nvkm_device *device = disp->engine.subdev.device;
 *pmask = (nvkm_rd32(device, 0x610184) & 0x0f000000) >> 24;
 return 4;
}

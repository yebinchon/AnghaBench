
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


 int gv100_head ;
 int nvkm_head_new_ (int *,struct nvkm_disp*,int) ;
 int nvkm_rd32 (struct nvkm_device*,int) ;

int
gv100_head_new(struct nvkm_disp *disp, int id)
{
 struct nvkm_device *device = disp->engine.subdev.device;
 if (!(nvkm_rd32(device, 0x610060) & (0x00000001 << id)))
  return 0;
 return nvkm_head_new_(&gv100_head, disp, id);
}

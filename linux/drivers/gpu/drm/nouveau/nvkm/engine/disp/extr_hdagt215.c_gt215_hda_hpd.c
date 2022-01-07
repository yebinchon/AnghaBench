
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_ior {int id; TYPE_3__* disp; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_4__ {struct nvkm_device* device; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;
struct TYPE_6__ {TYPE_2__ engine; } ;


 int nvkm_mask (struct nvkm_device*,int,int,int) ;

void
gt215_hda_hpd(struct nvkm_ior *ior, int head, bool present)
{
 struct nvkm_device *device = ior->disp->engine.subdev.device;
 u32 data = 0x80000000;
 u32 mask = 0x80000001;
 if (present)
  data |= 0x00000001;
 else
  mask |= 0x00000002;
 nvkm_mask(device, 0x61c448 + ior->id * 0x800, mask, data);
}

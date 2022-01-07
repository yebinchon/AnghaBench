
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {int link; } ;
struct nvkm_ior {TYPE_4__ asy; TYPE_3__* disp; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_5__ {struct nvkm_device* device; } ;
struct TYPE_6__ {TYPE_1__ subdev; } ;
struct TYPE_7__ {TYPE_2__ engine; } ;


 int nv50_ior_base (struct nvkm_ior*) ;
 int nvkm_mask (struct nvkm_device*,int const,int,int const) ;

void
gm107_sor_dp_pattern(struct nvkm_ior *sor, int pattern)
{
 struct nvkm_device *device = sor->disp->engine.subdev.device;
 const u32 soff = nv50_ior_base(sor);
 const u32 data = 0x01010101 * pattern;
 if (sor->asy.link & 1)
  nvkm_mask(device, 0x61c110 + soff, 0x0f0f0f0f, data);
 else
  nvkm_mask(device, 0x61c12c + soff, 0x0f0f0f0f, data);
}

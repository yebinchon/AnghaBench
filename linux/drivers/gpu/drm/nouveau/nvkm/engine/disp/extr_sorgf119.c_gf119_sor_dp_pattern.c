
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct nvkm_ior {TYPE_3__* disp; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_4__ {struct nvkm_device* device; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;
struct TYPE_6__ {TYPE_2__ engine; } ;


 scalar_t__ nv50_ior_base (struct nvkm_ior*) ;
 int nvkm_mask (struct nvkm_device*,scalar_t__ const,int,int) ;

void
gf119_sor_dp_pattern(struct nvkm_ior *sor, int pattern)
{
 struct nvkm_device *device = sor->disp->engine.subdev.device;
 const u32 soff = nv50_ior_base(sor);
 nvkm_mask(device, 0x61c110 + soff, 0x0f0f0f0f, 0x01010101 * pattern);
}

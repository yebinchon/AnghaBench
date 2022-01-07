
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int index; struct nvkm_device* device; } ;
struct TYPE_4__ {TYPE_1__ subdev; } ;
struct nvkm_falcon {scalar_t__ addr; TYPE_2__ engine; } ;
struct nvkm_device {int dummy; } ;


 int NVKM_ENGINE_CE0 ;
 int nvkm_wr32 (struct nvkm_device*,scalar_t__,int const) ;

__attribute__((used)) static void
gf100_ce_init(struct nvkm_falcon *ce)
{
 struct nvkm_device *device = ce->engine.subdev.device;
 const int index = ce->engine.subdev.index - NVKM_ENGINE_CE0;
 nvkm_wr32(device, ce->addr + 0x084, index);
}

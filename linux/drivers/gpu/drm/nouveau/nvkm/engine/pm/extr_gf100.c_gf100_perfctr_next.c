
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct nvkm_device* device; } ;
struct TYPE_4__ {TYPE_1__ subdev; } ;
struct nvkm_pm {TYPE_2__ engine; } ;
struct nvkm_perfdom {int signal_nr; scalar_t__ addr; } ;
struct nvkm_device {int dummy; } ;


 int nvkm_wr32 (struct nvkm_device*,scalar_t__,int) ;

__attribute__((used)) static void
gf100_perfctr_next(struct nvkm_pm *pm, struct nvkm_perfdom *dom)
{
 struct nvkm_device *device = pm->engine.subdev.device;
 nvkm_wr32(device, dom->addr + 0x06c, dom->signal_nr - 0x40 + 0x27);
 nvkm_wr32(device, dom->addr + 0x0ec, 0x00000011);
}

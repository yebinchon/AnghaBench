
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct nvkm_device* device; } ;
struct TYPE_3__ {TYPE_2__ subdev; } ;
struct nvkm_pm {TYPE_1__ engine; } ;
struct nvkm_perfdom {scalar_t__ addr; void* clk; } ;
struct nvkm_perfctr {int slot; void* ctr; } ;
struct nvkm_device {int dummy; } ;


 void* nvkm_rd32 (struct nvkm_device*,scalar_t__) ;

__attribute__((used)) static void
nv40_perfctr_read(struct nvkm_pm *pm, struct nvkm_perfdom *dom,
    struct nvkm_perfctr *ctr)
{
 struct nvkm_device *device = pm->engine.subdev.device;

 switch (ctr->slot) {
 case 0: ctr->ctr = nvkm_rd32(device, 0x00a700 + dom->addr); break;
 case 1: ctr->ctr = nvkm_rd32(device, 0x00a6c0 + dom->addr); break;
 case 2: ctr->ctr = nvkm_rd32(device, 0x00a680 + dom->addr); break;
 case 3: ctr->ctr = nvkm_rd32(device, 0x00a740 + dom->addr); break;
 }
 dom->clk = nvkm_rd32(device, 0x00a600 + dom->addr);
}

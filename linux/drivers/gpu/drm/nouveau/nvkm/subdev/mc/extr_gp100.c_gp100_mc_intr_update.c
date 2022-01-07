
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_device {int dummy; } ;
struct TYPE_3__ {struct nvkm_device* device; } ;
struct TYPE_4__ {TYPE_1__ subdev; } ;
struct gp100_mc {int mask; scalar_t__ intr; TYPE_2__ base; } ;


 int nvkm_wr32 (struct nvkm_device*,int,int) ;

__attribute__((used)) static void
gp100_mc_intr_update(struct gp100_mc *mc)
{
 struct nvkm_device *device = mc->base.subdev.device;
 u32 mask = mc->intr ? mc->mask : 0, i;
 for (i = 0; i < 2; i++) {
  nvkm_wr32(device, 0x000180 + (i * 0x04), ~mask);
  nvkm_wr32(device, 0x000160 + (i * 0x04), mask);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_device {int dummy; } ;
struct TYPE_5__ {struct nvkm_device* device; } ;
struct TYPE_6__ {TYPE_1__ subdev; } ;
struct TYPE_7__ {TYPE_2__ engine; } ;
struct gk104_fifo {TYPE_4__* runlist; TYPE_3__ base; } ;
struct TYPE_8__ {int wait; } ;


 int __ffs (int) ;
 int nvkm_rd32 (struct nvkm_device*,int) ;
 int nvkm_wr32 (struct nvkm_device*,int,int) ;
 int wake_up (int *) ;

__attribute__((used)) static void
gk104_fifo_intr_runlist(struct gk104_fifo *fifo)
{
 struct nvkm_device *device = fifo->base.engine.subdev.device;
 u32 mask = nvkm_rd32(device, 0x002a00);
 while (mask) {
  int runl = __ffs(mask);
  wake_up(&fifo->runlist[runl].wait);
  nvkm_wr32(device, 0x002a00, 1 << runl);
  mask &= ~(1 << runl);
 }
}

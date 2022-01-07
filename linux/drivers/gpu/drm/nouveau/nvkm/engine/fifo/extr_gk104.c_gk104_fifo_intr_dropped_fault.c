
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_3__ {struct nvkm_subdev subdev; } ;
struct TYPE_4__ {TYPE_1__ engine; } ;
struct gk104_fifo {TYPE_2__ base; } ;


 int nvkm_error (struct nvkm_subdev*,char*,int ) ;
 int nvkm_rd32 (struct nvkm_device*,int) ;

__attribute__((used)) static void
gk104_fifo_intr_dropped_fault(struct gk104_fifo *fifo)
{
 struct nvkm_subdev *subdev = &fifo->base.engine.subdev;
 struct nvkm_device *device = subdev->device;
 u32 stat = nvkm_rd32(device, 0x00259c);
 nvkm_error(subdev, "DROPPED_MMU_FAULT %08x\n", stat);
}

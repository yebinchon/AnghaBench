
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nvkm_device {int dummy; } ;
struct TYPE_4__ {struct nvkm_device* device; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;
struct TYPE_6__ {TYPE_2__ engine; } ;
struct gk104_fifo {TYPE_3__ base; } ;


 int nvkm_rd32 (struct nvkm_device*,int) ;

int
gm200_fifo_pbdma_nr(struct gk104_fifo *fifo)
{
 struct nvkm_device *device = fifo->base.engine.subdev.device;
 return nvkm_rd32(device, 0x002004) & 0x000000ff;
}

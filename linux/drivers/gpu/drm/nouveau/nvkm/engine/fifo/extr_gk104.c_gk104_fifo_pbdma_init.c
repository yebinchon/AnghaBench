
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
struct gk104_fifo {int pbdma_nr; TYPE_3__ base; } ;


 int nvkm_wr32 (struct nvkm_device*,int,int) ;

void
gk104_fifo_pbdma_init(struct gk104_fifo *fifo)
{
 struct nvkm_device *device = fifo->base.engine.subdev.device;
 nvkm_wr32(device, 0x000204, (1 << fifo->pbdma_nr) - 1);
}

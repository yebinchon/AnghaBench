
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_device {int dummy; } ;
struct TYPE_4__ {struct nvkm_device* device; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;
struct TYPE_6__ {TYPE_2__ engine; } ;
struct gk104_fifo {int pbdma_nr; TYPE_3__ base; } ;


 int nvkm_mask (struct nvkm_device*,int,int,int) ;

__attribute__((used)) static void
tu102_fifo_pbdma_init(struct gk104_fifo *fifo)
{
 struct nvkm_device *device = fifo->base.engine.subdev.device;
 const u32 mask = (1 << fifo->pbdma_nr) - 1;

 nvkm_mask(device, 0xb65000, 0x80000fff, 0x80000000 | mask);
}

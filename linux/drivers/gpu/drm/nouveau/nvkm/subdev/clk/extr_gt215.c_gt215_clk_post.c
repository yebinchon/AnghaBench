
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_fifo {int dummy; } ;
struct nvkm_device {struct nvkm_fifo* fifo; } ;
struct TYPE_2__ {struct nvkm_device* device; } ;
struct nvkm_clk {TYPE_1__ subdev; } ;


 int nvkm_fifo_start (struct nvkm_fifo*,unsigned long*) ;
 int nvkm_mask (struct nvkm_device*,int,int,int) ;

void
gt215_clk_post(struct nvkm_clk *clk, unsigned long *flags)
{
 struct nvkm_device *device = clk->subdev.device;
 struct nvkm_fifo *fifo = device->fifo;

 if (fifo && flags)
  nvkm_fifo_start(fifo, flags);

 nvkm_mask(device, 0x002504, 0x00000001, 0x00000000);
 nvkm_mask(device, 0x020060, 0x00070000, 0x00040000);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nvkm_fifo {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_4__ {struct nvkm_device* device; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;
struct TYPE_6__ {TYPE_2__ engine; } ;
struct nv50_fifo {int * runlist; TYPE_3__ base; } ;


 int NVKM_MEM_TARGET_INST ;
 struct nv50_fifo* nv50_fifo (struct nvkm_fifo*) ;
 int nvkm_memory_new (struct nvkm_device*,int ,int,int,int,int *) ;

int
nv50_fifo_oneinit(struct nvkm_fifo *base)
{
 struct nv50_fifo *fifo = nv50_fifo(base);
 struct nvkm_device *device = fifo->base.engine.subdev.device;
 int ret;

 ret = nvkm_memory_new(device, NVKM_MEM_TARGET_INST, 128 * 4, 0x1000,
         0, &fifo->runlist[0]);
 if (ret)
  return ret;

 return nvkm_memory_new(device, NVKM_MEM_TARGET_INST, 128 * 4, 0x1000,
          0, &fifo->runlist[1]);
}

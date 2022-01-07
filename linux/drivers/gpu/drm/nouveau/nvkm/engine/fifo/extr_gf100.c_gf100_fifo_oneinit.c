
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct nvkm_vmm {int dummy; } ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_fifo {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_8__ {int bar; int mem; } ;
struct TYPE_7__ {int wait; int * mem; } ;
struct TYPE_5__ {struct nvkm_subdev subdev; } ;
struct TYPE_6__ {TYPE_1__ engine; } ;
struct gf100_fifo {TYPE_4__ user; TYPE_3__ runlist; int pbdma_nr; TYPE_2__ base; } ;


 int NVKM_MEM_TARGET_INST ;
 struct gf100_fifo* gf100_fifo (struct nvkm_fifo*) ;
 int hweight32 (int ) ;
 int init_waitqueue_head (int *) ;
 struct nvkm_vmm* nvkm_bar_bar1_vmm (struct nvkm_device*) ;
 int nvkm_debug (struct nvkm_subdev*,char*,int ) ;
 int nvkm_memory_map (int ,int ,struct nvkm_vmm*,int ,int *,int ) ;
 int nvkm_memory_new (struct nvkm_device*,int ,int,int,int,int *) ;
 int nvkm_memory_size (int ) ;
 int nvkm_rd32 (struct nvkm_device*,int) ;
 int nvkm_vmm_get (struct nvkm_vmm*,int,int ,int *) ;
 int nvkm_wr32 (struct nvkm_device*,int,int) ;

__attribute__((used)) static int
gf100_fifo_oneinit(struct nvkm_fifo *base)
{
 struct gf100_fifo *fifo = gf100_fifo(base);
 struct nvkm_subdev *subdev = &fifo->base.engine.subdev;
 struct nvkm_device *device = subdev->device;
 struct nvkm_vmm *bar = nvkm_bar_bar1_vmm(device);
 int ret;


 nvkm_wr32(device, 0x002204, 0xffffffff);
 fifo->pbdma_nr = hweight32(nvkm_rd32(device, 0x002204));
 nvkm_debug(subdev, "%d PBDMA(s)\n", fifo->pbdma_nr);


 ret = nvkm_memory_new(device, NVKM_MEM_TARGET_INST, 0x1000, 0x1000,
         0, &fifo->runlist.mem[0]);
 if (ret)
  return ret;

 ret = nvkm_memory_new(device, NVKM_MEM_TARGET_INST, 0x1000, 0x1000,
         0, &fifo->runlist.mem[1]);
 if (ret)
  return ret;

 init_waitqueue_head(&fifo->runlist.wait);

 ret = nvkm_memory_new(device, NVKM_MEM_TARGET_INST, 128 * 0x1000,
         0x1000, 0, &fifo->user.mem);
 if (ret)
  return ret;

 ret = nvkm_vmm_get(bar, 12, nvkm_memory_size(fifo->user.mem),
      &fifo->user.bar);
 if (ret)
  return ret;

 return nvkm_memory_map(fifo->user.mem, 0, bar, fifo->user.bar, ((void*)0), 0);
}

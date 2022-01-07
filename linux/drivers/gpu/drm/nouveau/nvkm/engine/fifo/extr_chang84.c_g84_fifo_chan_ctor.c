
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct nvkm_oclass {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_8__ {int inst; } ;
struct nv50_fifo_chan {int ramht; TYPE_4__ base; int ramfc; int cache; int pgd; int eng; struct nv50_fifo* fifo; } ;
struct TYPE_5__ {struct nvkm_device* device; } ;
struct TYPE_6__ {TYPE_1__ subdev; } ;
struct TYPE_7__ {TYPE_2__ engine; } ;
struct nv50_fifo {TYPE_3__ base; } ;


 int EINVAL ;
 unsigned long long NVKM_ENGINE_BSP ;
 unsigned long long NVKM_ENGINE_CE0 ;
 unsigned long long NVKM_ENGINE_CIPHER ;
 unsigned long long NVKM_ENGINE_DMAOBJ ;
 unsigned long long NVKM_ENGINE_GR ;
 unsigned long long NVKM_ENGINE_ME ;
 unsigned long long NVKM_ENGINE_MPEG ;
 unsigned long long NVKM_ENGINE_MSPDEC ;
 unsigned long long NVKM_ENGINE_MSPPP ;
 unsigned long long NVKM_ENGINE_MSVLD ;
 unsigned long long NVKM_ENGINE_SEC ;
 unsigned long long NVKM_ENGINE_SW ;
 unsigned long long NVKM_ENGINE_VIC ;
 unsigned long long NVKM_ENGINE_VP ;
 int g84_fifo_chan_func ;
 int nvkm_fifo_chan_ctor (int *,TYPE_3__*,int,int,int,int ,int ,unsigned long long,int ,int,int,struct nvkm_oclass const*,TYPE_4__*) ;
 int nvkm_gpuobj_new (struct nvkm_device*,int,int,int,int ,int *) ;
 int nvkm_ramht_new (struct nvkm_device*,int,int,int ,int *) ;

int
g84_fifo_chan_ctor(struct nv50_fifo *fifo, u64 vmm, u64 push,
     const struct nvkm_oclass *oclass,
     struct nv50_fifo_chan *chan)
{
 struct nvkm_device *device = fifo->base.engine.subdev.device;
 int ret;

 if (!vmm)
  return -EINVAL;

 ret = nvkm_fifo_chan_ctor(&g84_fifo_chan_func, &fifo->base,
      0x10000, 0x1000, 0, vmm, push,
      (1ULL << NVKM_ENGINE_BSP) |
      (1ULL << NVKM_ENGINE_CE0) |
      (1ULL << NVKM_ENGINE_CIPHER) |
      (1ULL << NVKM_ENGINE_DMAOBJ) |
      (1ULL << NVKM_ENGINE_GR) |
      (1ULL << NVKM_ENGINE_ME) |
      (1ULL << NVKM_ENGINE_MPEG) |
      (1ULL << NVKM_ENGINE_MSPDEC) |
      (1ULL << NVKM_ENGINE_MSPPP) |
      (1ULL << NVKM_ENGINE_MSVLD) |
      (1ULL << NVKM_ENGINE_SEC) |
      (1ULL << NVKM_ENGINE_SW) |
      (1ULL << NVKM_ENGINE_VIC) |
      (1ULL << NVKM_ENGINE_VP),
      0, 0xc00000, 0x2000, oclass, &chan->base);
 chan->fifo = fifo;
 if (ret)
  return ret;

 ret = nvkm_gpuobj_new(device, 0x0200, 0, 1, chan->base.inst,
         &chan->eng);
 if (ret)
  return ret;

 ret = nvkm_gpuobj_new(device, 0x4000, 0, 0, chan->base.inst,
         &chan->pgd);
 if (ret)
  return ret;

 ret = nvkm_gpuobj_new(device, 0x1000, 0x400, 1, chan->base.inst,
         &chan->cache);
 if (ret)
  return ret;

 ret = nvkm_gpuobj_new(device, 0x100, 0x100, 1, chan->base.inst,
         &chan->ramfc);
 if (ret)
  return ret;

 return nvkm_ramht_new(device, 0x8000, 16, chan->base.inst, &chan->ramht);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_memory {int dummy; } ;
struct nvkm_fifo_chan {int dummy; } ;
struct nvkm_device {TYPE_3__* imem; } ;
struct nv04_fifo_ramfc {unsigned long long bits; unsigned long long regs; unsigned long long ctxs; int ctxp; int regp; } ;
struct TYPE_9__ {int chid; } ;
struct nv04_fifo_chan {int ramfc; TYPE_4__ base; struct nv04_fifo* fifo; } ;
struct TYPE_6__ {struct nvkm_device* device; } ;
struct TYPE_7__ {TYPE_1__ subdev; } ;
struct TYPE_10__ {int nr; int lock; TYPE_2__ engine; } ;
struct nv04_fifo {TYPE_5__ base; struct nv04_fifo_ramfc* ramfc; } ;
struct TYPE_8__ {struct nvkm_memory* ramfc; } ;


 int NV03_PFIFO_CACHE1_GET ;
 int NV03_PFIFO_CACHE1_PUSH0 ;
 int NV03_PFIFO_CACHE1_PUSH1 ;
 int NV03_PFIFO_CACHE1_PUT ;
 int NV03_PFIFO_CACHES ;
 int NV04_PFIFO_CACHE1_DMA_PUSH ;
 int NV04_PFIFO_CACHE1_PULL0 ;
 int NV04_PFIFO_MODE ;
 struct nv04_fifo_chan* nv04_fifo_chan (struct nvkm_fifo_chan*) ;
 int nvkm_done (struct nvkm_memory*) ;
 int nvkm_kmap (struct nvkm_memory*) ;
 int nvkm_mask (struct nvkm_device*,int ,int,int ) ;
 int nvkm_rd32 (struct nvkm_device*,int ) ;
 int nvkm_ro32 (struct nvkm_memory*,int) ;
 int nvkm_wo32 (struct nvkm_memory*,int,int) ;
 int nvkm_wr32 (struct nvkm_device*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
nv04_fifo_dma_fini(struct nvkm_fifo_chan *base)
{
 struct nv04_fifo_chan *chan = nv04_fifo_chan(base);
 struct nv04_fifo *fifo = chan->fifo;
 struct nvkm_device *device = fifo->base.engine.subdev.device;
 struct nvkm_memory *fctx = device->imem->ramfc;
 const struct nv04_fifo_ramfc *c;
 unsigned long flags;
 u32 mask = fifo->base.nr - 1;
 u32 data = chan->ramfc;
 u32 chid;


 spin_lock_irqsave(&fifo->base.lock, flags);
 nvkm_wr32(device, NV03_PFIFO_CACHES, 0);


 chid = nvkm_rd32(device, NV03_PFIFO_CACHE1_PUSH1) & mask;
 if (chid == chan->base.chid) {
  nvkm_mask(device, NV04_PFIFO_CACHE1_DMA_PUSH, 0x00000001, 0);
  nvkm_wr32(device, NV03_PFIFO_CACHE1_PUSH0, 0);
  nvkm_mask(device, NV04_PFIFO_CACHE1_PULL0, 0x00000001, 0);

  c = fifo->ramfc;
  nvkm_kmap(fctx);
  do {
   u32 rm = ((1ULL << c->bits) - 1) << c->regs;
   u32 cm = ((1ULL << c->bits) - 1) << c->ctxs;
   u32 rv = (nvkm_rd32(device, c->regp) & rm) >> c->regs;
   u32 cv = (nvkm_ro32(fctx, c->ctxp + data) & ~cm);
   nvkm_wo32(fctx, c->ctxp + data, cv | (rv << c->ctxs));
  } while ((++c)->bits);
  nvkm_done(fctx);

  c = fifo->ramfc;
  do {
   nvkm_wr32(device, c->regp, 0x00000000);
  } while ((++c)->bits);

  nvkm_wr32(device, NV03_PFIFO_CACHE1_GET, 0);
  nvkm_wr32(device, NV03_PFIFO_CACHE1_PUT, 0);
  nvkm_wr32(device, NV03_PFIFO_CACHE1_PUSH1, mask);
  nvkm_wr32(device, NV03_PFIFO_CACHE1_PUSH0, 1);
  nvkm_wr32(device, NV04_PFIFO_CACHE1_PULL0, 1);
 }


 nvkm_mask(device, NV04_PFIFO_MODE, 1 << chan->base.chid, 0);
 nvkm_wr32(device, NV03_PFIFO_CACHES, 1);
 spin_unlock_irqrestore(&fifo->base.lock, flags);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct nvkm_instmem {int ramfc; } ;
struct nvkm_fifo_chan {int dummy; } ;
struct nvkm_engine {int dummy; } ;
struct nvkm_device {struct nvkm_instmem* imem; } ;
struct TYPE_7__ {int chid; } ;
struct nv04_fifo_chan {scalar_t__ ramfc; TYPE_3__ base; struct nv04_fifo* fifo; } ;
struct TYPE_5__ {struct nvkm_device* device; } ;
struct TYPE_6__ {TYPE_1__ subdev; } ;
struct TYPE_8__ {int nr; int lock; TYPE_2__ engine; } ;
struct nv04_fifo {TYPE_4__ base; } ;


 struct nv04_fifo_chan* nv04_fifo_chan (struct nvkm_fifo_chan*) ;
 int nv40_fifo_dma_engine (struct nvkm_engine*,scalar_t__*,scalar_t__*) ;
 int nvkm_done (int ) ;
 int nvkm_kmap (int ) ;
 int nvkm_mask (struct nvkm_device*,int,int,int) ;
 int nvkm_rd32 (struct nvkm_device*,int) ;
 int nvkm_wo32 (int ,scalar_t__,int) ;
 int nvkm_wr32 (struct nvkm_device*,scalar_t__,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
nv40_fifo_dma_engine_fini(struct nvkm_fifo_chan *base,
     struct nvkm_engine *engine, bool suspend)
{
 struct nv04_fifo_chan *chan = nv04_fifo_chan(base);
 struct nv04_fifo *fifo = chan->fifo;
 struct nvkm_device *device = fifo->base.engine.subdev.device;
 struct nvkm_instmem *imem = device->imem;
 unsigned long flags;
 u32 reg, ctx;
 int chid;

 if (!nv40_fifo_dma_engine(engine, &reg, &ctx))
  return 0;

 spin_lock_irqsave(&fifo->base.lock, flags);
 nvkm_mask(device, 0x002500, 0x00000001, 0x00000000);

 chid = nvkm_rd32(device, 0x003204) & (fifo->base.nr - 1);
 if (chid == chan->base.chid)
  nvkm_wr32(device, reg, 0x00000000);
 nvkm_kmap(imem->ramfc);
 nvkm_wo32(imem->ramfc, chan->ramfc + ctx, 0x00000000);
 nvkm_done(imem->ramfc);

 nvkm_mask(device, 0x002500, 0x00000001, 0x00000001);
 spin_unlock_irqrestore(&fifo->base.lock, flags);
 return 0;
}

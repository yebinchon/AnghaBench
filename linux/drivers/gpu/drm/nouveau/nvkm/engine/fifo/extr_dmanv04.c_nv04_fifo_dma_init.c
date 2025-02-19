
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_fifo_chan {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_8__ {int chid; } ;
struct nv04_fifo_chan {TYPE_4__ base; struct nv04_fifo* fifo; } ;
struct TYPE_5__ {struct nvkm_device* device; } ;
struct TYPE_6__ {TYPE_1__ subdev; } ;
struct TYPE_7__ {int lock; TYPE_2__ engine; } ;
struct nv04_fifo {TYPE_3__ base; } ;


 int NV04_PFIFO_MODE ;
 struct nv04_fifo_chan* nv04_fifo_chan (struct nvkm_fifo_chan*) ;
 int nvkm_mask (struct nvkm_device*,int ,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
nv04_fifo_dma_init(struct nvkm_fifo_chan *base)
{
 struct nv04_fifo_chan *chan = nv04_fifo_chan(base);
 struct nv04_fifo *fifo = chan->fifo;
 struct nvkm_device *device = fifo->base.engine.subdev.device;
 u32 mask = 1 << chan->base.chid;
 unsigned long flags;
 spin_lock_irqsave(&fifo->base.lock, flags);
 nvkm_mask(device, NV04_PFIFO_MODE, mask, mask);
 spin_unlock_irqrestore(&fifo->base.lock, flags);
}

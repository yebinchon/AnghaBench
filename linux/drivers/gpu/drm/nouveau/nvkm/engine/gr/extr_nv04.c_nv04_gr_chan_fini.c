
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nvkm_object {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct nv04_gr_chan {struct nv04_gr* gr; } ;
struct TYPE_4__ {struct nvkm_device* device; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;
struct TYPE_6__ {TYPE_2__ engine; } ;
struct nv04_gr {int lock; TYPE_3__ base; } ;


 int NV04_PGRAPH_FIFO ;
 struct nv04_gr_chan* nv04_gr_chan (struct nvkm_object*) ;
 struct nv04_gr_chan* nv04_gr_channel (struct nv04_gr*) ;
 int nv04_gr_unload_context (struct nv04_gr_chan*) ;
 int nvkm_mask (struct nvkm_device*,int ,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
nv04_gr_chan_fini(struct nvkm_object *object, bool suspend)
{
 struct nv04_gr_chan *chan = nv04_gr_chan(object);
 struct nv04_gr *gr = chan->gr;
 struct nvkm_device *device = gr->base.engine.subdev.device;
 unsigned long flags;

 spin_lock_irqsave(&gr->lock, flags);
 nvkm_mask(device, NV04_PGRAPH_FIFO, 0x00000001, 0x00000000);
 if (nv04_gr_channel(gr) == chan)
  nv04_gr_unload_context(chan);
 nvkm_mask(device, NV04_PGRAPH_FIFO, 0x00000001, 0x00000001);
 spin_unlock_irqrestore(&gr->lock, flags);
 return 0;
}

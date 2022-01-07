
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvkm_oclass {int dummy; } ;
struct nvkm_object {int dummy; } ;
struct nvkm_gr {int dummy; } ;
struct nvkm_fifo_chan {int dummy; } ;
struct nv40_gr_chan {struct nv40_gr* gr; int head; struct nvkm_object object; struct nvkm_fifo_chan* fifo; } ;
struct TYPE_3__ {int lock; } ;
struct TYPE_4__ {TYPE_1__ engine; } ;
struct nv40_gr {TYPE_2__ base; int chan; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct nv40_gr_chan* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 struct nv40_gr* nv40_gr (struct nvkm_gr*) ;
 int nv40_gr_chan ;
 int nvkm_object_ctor (int *,struct nvkm_oclass const*,struct nvkm_object*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
nv40_gr_chan_new(struct nvkm_gr *base, struct nvkm_fifo_chan *fifoch,
   const struct nvkm_oclass *oclass, struct nvkm_object **pobject)
{
 struct nv40_gr *gr = nv40_gr(base);
 struct nv40_gr_chan *chan;
 unsigned long flags;

 if (!(chan = kzalloc(sizeof(*chan), GFP_KERNEL)))
  return -ENOMEM;
 nvkm_object_ctor(&nv40_gr_chan, oclass, &chan->object);
 chan->gr = gr;
 chan->fifo = fifoch;
 *pobject = &chan->object;

 spin_lock_irqsave(&chan->gr->base.engine.lock, flags);
 list_add(&chan->head, &gr->chan);
 spin_unlock_irqrestore(&chan->gr->base.engine.lock, flags);
 return 0;
}

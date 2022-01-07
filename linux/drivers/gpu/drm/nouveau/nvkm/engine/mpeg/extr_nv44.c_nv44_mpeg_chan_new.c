
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_oclass {int engine; } ;
struct nvkm_object {int dummy; } ;
struct nvkm_fifo_chan {int dummy; } ;
struct nv44_mpeg_chan {int head; struct nvkm_object object; struct nvkm_fifo_chan* fifo; struct nv44_mpeg* mpeg; } ;
struct TYPE_2__ {int lock; } ;
struct nv44_mpeg {TYPE_1__ engine; int chan; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct nv44_mpeg_chan* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 struct nv44_mpeg* nv44_mpeg (int ) ;
 int nv44_mpeg_chan ;
 int nvkm_object_ctor (int *,struct nvkm_oclass const*,struct nvkm_object*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
nv44_mpeg_chan_new(struct nvkm_fifo_chan *fifoch,
     const struct nvkm_oclass *oclass,
     struct nvkm_object **pobject)
{
 struct nv44_mpeg *mpeg = nv44_mpeg(oclass->engine);
 struct nv44_mpeg_chan *chan;
 unsigned long flags;

 if (!(chan = kzalloc(sizeof(*chan), GFP_KERNEL)))
  return -ENOMEM;
 nvkm_object_ctor(&nv44_mpeg_chan, oclass, &chan->object);
 chan->mpeg = mpeg;
 chan->fifo = fifoch;
 *pobject = &chan->object;

 spin_lock_irqsave(&mpeg->engine.lock, flags);
 list_add(&chan->head, &mpeg->chan);
 spin_unlock_irqrestore(&mpeg->engine.lock, flags);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_oclass {int dummy; } ;
struct nvkm_object {int dummy; } ;
struct nvkm_gr {int dummy; } ;
struct nvkm_fifo_chan {size_t chid; } ;
struct nv04_gr_chan {size_t chid; struct nvkm_object object; struct nv04_gr* gr; } ;
struct nv04_gr {int lock; struct nv04_gr_chan** chan; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int NV04_PGRAPH_DEBUG_3 ;
 int* ctx_reg (struct nv04_gr_chan*,int ) ;
 struct nv04_gr_chan* kzalloc (int,int ) ;
 struct nv04_gr* nv04_gr (struct nvkm_gr*) ;
 int nv04_gr_chan ;
 int nvkm_object_ctor (int *,struct nvkm_oclass const*,struct nvkm_object*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
nv04_gr_chan_new(struct nvkm_gr *base, struct nvkm_fifo_chan *fifoch,
   const struct nvkm_oclass *oclass, struct nvkm_object **pobject)
{
 struct nv04_gr *gr = nv04_gr(base);
 struct nv04_gr_chan *chan;
 unsigned long flags;

 if (!(chan = kzalloc(sizeof(*chan), GFP_KERNEL)))
  return -ENOMEM;
 nvkm_object_ctor(&nv04_gr_chan, oclass, &chan->object);
 chan->gr = gr;
 chan->chid = fifoch->chid;
 *pobject = &chan->object;

 *ctx_reg(chan, NV04_PGRAPH_DEBUG_3) = 0xfad4ff31;

 spin_lock_irqsave(&gr->lock, flags);
 gr->chan[chan->chid] = chan;
 spin_unlock_irqrestore(&gr->lock, flags);
 return 0;
}

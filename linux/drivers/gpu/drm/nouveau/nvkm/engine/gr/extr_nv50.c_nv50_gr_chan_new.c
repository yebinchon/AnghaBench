
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_oclass {int dummy; } ;
struct nvkm_object {int dummy; } ;
struct nvkm_gr {int dummy; } ;
struct nvkm_fifo_chan {int dummy; } ;
struct nv50_gr_chan {struct nvkm_object object; struct nv50_gr* gr; } ;
struct nv50_gr {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct nv50_gr_chan* kzalloc (int,int ) ;
 struct nv50_gr* nv50_gr (struct nvkm_gr*) ;
 int nv50_gr_chan ;
 int nvkm_object_ctor (int *,struct nvkm_oclass const*,struct nvkm_object*) ;

int
nv50_gr_chan_new(struct nvkm_gr *base, struct nvkm_fifo_chan *fifoch,
   const struct nvkm_oclass *oclass, struct nvkm_object **pobject)
{
 struct nv50_gr *gr = nv50_gr(base);
 struct nv50_gr_chan *chan;

 if (!(chan = kzalloc(sizeof(*chan), GFP_KERNEL)))
  return -ENOMEM;
 nvkm_object_ctor(&nv50_gr_chan, oclass, &chan->object);
 chan->gr = gr;
 *pobject = &chan->object;
 return 0;
}

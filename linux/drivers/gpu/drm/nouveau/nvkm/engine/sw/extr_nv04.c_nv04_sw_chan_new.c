
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_sw {int dummy; } ;
struct nvkm_oclass {int dummy; } ;
struct nvkm_object {int dummy; } ;
struct nvkm_fifo_chan {int dummy; } ;
struct TYPE_2__ {struct nvkm_object object; } ;
struct nv04_sw_chan {TYPE_1__ base; int ref; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int atomic_set (int *,int ) ;
 struct nv04_sw_chan* kzalloc (int,int ) ;
 int nv04_sw_chan ;
 int nvkm_sw_chan_ctor (int *,struct nvkm_sw*,struct nvkm_fifo_chan*,struct nvkm_oclass const*,TYPE_1__*) ;

__attribute__((used)) static int
nv04_sw_chan_new(struct nvkm_sw *sw, struct nvkm_fifo_chan *fifo,
   const struct nvkm_oclass *oclass, struct nvkm_object **pobject)
{
 struct nv04_sw_chan *chan;

 if (!(chan = kzalloc(sizeof(*chan), GFP_KERNEL)))
  return -ENOMEM;
 atomic_set(&chan->ref, 0);
 *pobject = &chan->base.object;

 return nvkm_sw_chan_ctor(&nv04_sw_chan, sw, fifo, oclass, &chan->base);
}

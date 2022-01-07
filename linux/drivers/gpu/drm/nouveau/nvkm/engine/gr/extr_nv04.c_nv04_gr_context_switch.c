
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nvkm_device {int dummy; } ;
struct nv04_gr_chan {int dummy; } ;
struct TYPE_4__ {struct nvkm_device* device; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;
struct TYPE_6__ {TYPE_2__ engine; } ;
struct nv04_gr {struct nv04_gr_chan** chan; TYPE_3__ base; } ;


 int NV04_PGRAPH_TRAPPED_ADDR ;
 struct nv04_gr_chan* nv04_gr_channel (struct nv04_gr*) ;
 int nv04_gr_idle (TYPE_3__*) ;
 int nv04_gr_load_context (struct nv04_gr_chan*,int) ;
 int nv04_gr_unload_context (struct nv04_gr_chan*) ;
 int nvkm_rd32 (struct nvkm_device*,int ) ;

__attribute__((used)) static void
nv04_gr_context_switch(struct nv04_gr *gr)
{
 struct nvkm_device *device = gr->base.engine.subdev.device;
 struct nv04_gr_chan *prev = ((void*)0);
 struct nv04_gr_chan *next = ((void*)0);
 int chid;

 nv04_gr_idle(&gr->base);


 prev = nv04_gr_channel(gr);
 if (prev)
  nv04_gr_unload_context(prev);


 chid = (nvkm_rd32(device, NV04_PGRAPH_TRAPPED_ADDR) >> 24) & 0x0f;
 next = gr->chan[chid];
 if (next)
  nv04_gr_load_context(next, chid);
}

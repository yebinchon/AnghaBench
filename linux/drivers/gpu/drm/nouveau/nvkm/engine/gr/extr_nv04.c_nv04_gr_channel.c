
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


 int ARRAY_SIZE (struct nv04_gr_chan**) ;
 int NV04_PGRAPH_CTX_CONTROL ;
 int NV04_PGRAPH_CTX_USER ;
 int nvkm_rd32 (struct nvkm_device*,int ) ;

__attribute__((used)) static struct nv04_gr_chan *
nv04_gr_channel(struct nv04_gr *gr)
{
 struct nvkm_device *device = gr->base.engine.subdev.device;
 struct nv04_gr_chan *chan = ((void*)0);
 if (nvkm_rd32(device, NV04_PGRAPH_CTX_CONTROL) & 0x00010000) {
  int chid = nvkm_rd32(device, NV04_PGRAPH_CTX_USER) >> 24;
  if (chid < ARRAY_SIZE(gr->chan))
   chan = gr->chan[chid];
 }
 return chan;
}

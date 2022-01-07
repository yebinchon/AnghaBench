
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nvkm_object {int dummy; } ;
struct nvkm_gpuobj {int addr; } ;
struct nv40_gr_chan {int inst; struct nv40_gr* gr; } ;
struct TYPE_4__ {int device; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;
struct TYPE_6__ {TYPE_2__ engine; } ;
struct nv40_gr {TYPE_3__ base; int size; } ;


 struct nv40_gr_chan* nv40_gr_chan (struct nvkm_object*) ;
 int nv40_grctx_fill (int ,struct nvkm_gpuobj*) ;
 int nvkm_done (struct nvkm_gpuobj*) ;
 int nvkm_gpuobj_new (int ,int ,int,int,struct nvkm_gpuobj*,struct nvkm_gpuobj**) ;
 int nvkm_kmap (struct nvkm_gpuobj*) ;
 int nvkm_wo32 (struct nvkm_gpuobj*,int,int) ;

__attribute__((used)) static int
nv40_gr_chan_bind(struct nvkm_object *object, struct nvkm_gpuobj *parent,
    int align, struct nvkm_gpuobj **pgpuobj)
{
 struct nv40_gr_chan *chan = nv40_gr_chan(object);
 struct nv40_gr *gr = chan->gr;
 int ret = nvkm_gpuobj_new(gr->base.engine.subdev.device, gr->size,
      align, 1, parent, pgpuobj);
 if (ret == 0) {
  chan->inst = (*pgpuobj)->addr;
  nvkm_kmap(*pgpuobj);
  nv40_grctx_fill(gr->base.engine.subdev.device, *pgpuobj);
  nvkm_wo32(*pgpuobj, 0x00000, chan->inst >> 4);
  nvkm_done(*pgpuobj);
 }
 return ret;
}

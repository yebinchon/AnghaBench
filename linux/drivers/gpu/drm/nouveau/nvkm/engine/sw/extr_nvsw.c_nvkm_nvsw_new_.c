
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_sw_chan {int dummy; } ;
struct nvkm_oclass {int dummy; } ;
struct nvkm_object {int dummy; } ;
struct nvkm_nvsw_func {int dummy; } ;
struct nvkm_nvsw {struct nvkm_sw_chan* chan; struct nvkm_nvsw_func const* func; struct nvkm_object object; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct nvkm_nvsw* kzalloc (int,int ) ;
 int nvkm_nvsw_ ;
 int nvkm_object_ctor (int *,struct nvkm_oclass const*,struct nvkm_object*) ;

int
nvkm_nvsw_new_(const struct nvkm_nvsw_func *func, struct nvkm_sw_chan *chan,
        const struct nvkm_oclass *oclass, void *data, u32 size,
        struct nvkm_object **pobject)
{
 struct nvkm_nvsw *nvsw;

 if (!(nvsw = kzalloc(sizeof(*nvsw), GFP_KERNEL)))
  return -ENOMEM;
 *pobject = &nvsw->object;

 nvkm_object_ctor(&nvkm_nvsw_, oclass, &nvsw->object);
 nvsw->func = func;
 nvsw->chan = chan;
 return 0;
}

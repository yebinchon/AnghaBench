
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_sw {TYPE_1__* func; } ;
struct nvkm_oclass {int engine; } ;
struct nvkm_object {int dummy; } ;
struct nvkm_fifo_chan {int dummy; } ;
struct TYPE_2__ {int (* chan_new ) (struct nvkm_sw*,struct nvkm_fifo_chan*,struct nvkm_oclass const*,struct nvkm_object**) ;} ;


 struct nvkm_sw* nvkm_sw (int ) ;
 int stub1 (struct nvkm_sw*,struct nvkm_fifo_chan*,struct nvkm_oclass const*,struct nvkm_object**) ;

__attribute__((used)) static int
nvkm_sw_cclass_get(struct nvkm_fifo_chan *fifoch,
     const struct nvkm_oclass *oclass,
     struct nvkm_object **pobject)
{
 struct nvkm_sw *sw = nvkm_sw(oclass->engine);
 return sw->func->chan_new(sw, fifoch, oclass, pobject);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_sw_chan {int dummy; } ;
struct nvkm_oclass {int dummy; } ;
struct nvkm_object {int dummy; } ;


 int nvkm_nvsw ;
 int nvkm_nvsw_new_ (int *,struct nvkm_sw_chan*,struct nvkm_oclass const*,void*,int ,struct nvkm_object**) ;

int
nvkm_nvsw_new(struct nvkm_sw_chan *chan, const struct nvkm_oclass *oclass,
       void *data, u32 size, struct nvkm_object **pobject)
{
 return nvkm_nvsw_new_(&nvkm_nvsw, chan, oclass, data, size, pobject);
}

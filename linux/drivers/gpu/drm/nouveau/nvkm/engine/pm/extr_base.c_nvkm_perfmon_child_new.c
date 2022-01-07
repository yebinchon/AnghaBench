
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_perfmon {int dummy; } ;
struct nvkm_oclass {int parent; } ;
struct nvkm_object {int dummy; } ;


 int nvkm_perfdom_new_ (struct nvkm_perfmon*,struct nvkm_oclass const*,void*,int ,struct nvkm_object**) ;
 struct nvkm_perfmon* nvkm_perfmon (int ) ;

__attribute__((used)) static int
nvkm_perfmon_child_new(const struct nvkm_oclass *oclass, void *data, u32 size,
         struct nvkm_object **pobject)
{
 struct nvkm_perfmon *perfmon = nvkm_perfmon(oclass->parent);
 return nvkm_perfdom_new_(perfmon, oclass, data, size, pobject);
}

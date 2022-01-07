
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_pm {int dummy; } ;
struct nvkm_object {int dummy; } ;
struct nvkm_perfmon {struct nvkm_object object; struct nvkm_pm* pm; } ;
struct nvkm_oclass {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct nvkm_perfmon* kzalloc (int,int ) ;
 int nvkm_object_ctor (int *,struct nvkm_oclass const*,struct nvkm_object*) ;
 int nvkm_perfmon ;

__attribute__((used)) static int
nvkm_perfmon_new(struct nvkm_pm *pm, const struct nvkm_oclass *oclass,
   void *data, u32 size, struct nvkm_object **pobject)
{
 struct nvkm_perfmon *perfmon;

 if (!(perfmon = kzalloc(sizeof(*perfmon), GFP_KERNEL)))
  return -ENOMEM;
 nvkm_object_ctor(&nvkm_perfmon, oclass, &perfmon->object);
 perfmon->pm = pm;
 *pobject = &perfmon->object;
 return 0;
}

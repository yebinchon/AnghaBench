
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ maxver; scalar_t__ minver; int oclass; } ;
struct nvkm_oclass {int ctor; TYPE_1__ base; } ;
struct nvkm_object {int dummy; } ;


 int EINVAL ;
 int NVIF_CLASS_PERFDOM ;
 int nvkm_perfmon_child_new ;

__attribute__((used)) static int
nvkm_perfmon_child_get(struct nvkm_object *object, int index,
         struct nvkm_oclass *oclass)
{
 if (index == 0) {
  oclass->base.oclass = NVIF_CLASS_PERFDOM;
  oclass->base.minver = 0;
  oclass->base.maxver = 0;
  oclass->ctor = nvkm_perfmon_child_new;
  return 0;
 }
 return -EINVAL;
}

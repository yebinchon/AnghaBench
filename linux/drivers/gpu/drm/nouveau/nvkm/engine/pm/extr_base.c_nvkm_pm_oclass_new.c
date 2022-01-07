
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int mutex; } ;
struct TYPE_4__ {TYPE_1__ subdev; } ;
struct nvkm_pm {TYPE_2__ engine; struct nvkm_object* perfmon; } ;
struct nvkm_oclass {int engine; } ;
struct nvkm_object {int dummy; } ;
struct nvkm_device {int dummy; } ;


 int EBUSY ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nvkm_perfmon_new (struct nvkm_pm*,struct nvkm_oclass const*,void*,int ,struct nvkm_object**) ;
 struct nvkm_pm* nvkm_pm (int ) ;

__attribute__((used)) static int
nvkm_pm_oclass_new(struct nvkm_device *device, const struct nvkm_oclass *oclass,
     void *data, u32 size, struct nvkm_object **pobject)
{
 struct nvkm_pm *pm = nvkm_pm(oclass->engine);
 int ret;

 ret = nvkm_perfmon_new(pm, oclass, data, size, pobject);
 if (ret)
  return ret;

 mutex_lock(&pm->engine.subdev.mutex);
 if (pm->perfmon == ((void*)0))
  pm->perfmon = *pobject;
 ret = (pm->perfmon == *pobject) ? 0 : -EBUSY;
 mutex_unlock(&pm->engine.subdev.mutex);
 return ret;
}

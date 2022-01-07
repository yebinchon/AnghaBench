
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_pm_func {int dummy; } ;
struct nvkm_pm {int engine; int sources; int domains; struct nvkm_pm_func const* func; } ;
struct nvkm_device {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 int nvkm_engine_ctor (int *,struct nvkm_device*,int,int,int *) ;
 int nvkm_pm ;

int
nvkm_pm_ctor(const struct nvkm_pm_func *func, struct nvkm_device *device,
      int index, struct nvkm_pm *pm)
{
 pm->func = func;
 INIT_LIST_HEAD(&pm->domains);
 INIT_LIST_HEAD(&pm->sources);
 return nvkm_engine_ctor(&nvkm_pm, device, index, 1, &pm->engine);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mutex; } ;
struct nvkm_engine {scalar_t__ usecount; TYPE_1__ subdev; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nvkm_subdev_fini (TYPE_1__*,int) ;

void
nvkm_engine_unref(struct nvkm_engine **pengine)
{
 struct nvkm_engine *engine = *pengine;
 if (engine) {
  mutex_lock(&engine->subdev.mutex);
  if (--engine->usecount == 0)
   nvkm_subdev_fini(&engine->subdev, 0);
  mutex_unlock(&engine->subdev.mutex);
  *pengine = ((void*)0);
 }
}

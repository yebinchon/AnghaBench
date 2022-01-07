
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mutex; } ;
struct nvkm_engine {int usecount; TYPE_1__ subdev; } ;


 struct nvkm_engine* ERR_PTR (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nvkm_subdev_init (TYPE_1__*) ;

struct nvkm_engine *
nvkm_engine_ref(struct nvkm_engine *engine)
{
 if (engine) {
  mutex_lock(&engine->subdev.mutex);
  if (++engine->usecount == 1) {
   int ret = nvkm_subdev_init(&engine->subdev);
   if (ret) {
    engine->usecount--;
    mutex_unlock(&engine->subdev.mutex);
    return ERR_PTR(ret);
   }
  }
  mutex_unlock(&engine->subdev.mutex);
 }
 return engine;
}

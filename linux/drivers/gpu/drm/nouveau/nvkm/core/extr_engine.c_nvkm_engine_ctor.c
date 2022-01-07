
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_engine_func {int dummy; } ;
struct nvkm_engine {int lock; int subdev; struct nvkm_engine_func const* func; } ;
struct nvkm_device {int cfgopt; } ;


 int ENODEV ;
 int nvkm_boolopt (int ,int ,int) ;
 int nvkm_debug (int *,char*) ;
 int nvkm_engine_func ;
 int nvkm_subdev_ctor (int *,struct nvkm_device*,int,int *) ;
 int * nvkm_subdev_name ;
 int spin_lock_init (int *) ;

int
nvkm_engine_ctor(const struct nvkm_engine_func *func,
   struct nvkm_device *device, int index, bool enable,
   struct nvkm_engine *engine)
{
 nvkm_subdev_ctor(&nvkm_engine_func, device, index, &engine->subdev);
 engine->func = func;

 if (!nvkm_boolopt(device->cfgopt, nvkm_subdev_name[index], enable)) {
  nvkm_debug(&engine->subdev, "disabled\n");
  return -ENODEV;
 }

 spin_lock_init(&engine->lock);
 return 0;
}

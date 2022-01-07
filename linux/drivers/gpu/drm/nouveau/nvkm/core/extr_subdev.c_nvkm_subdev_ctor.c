
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_subdev_func {int dummy; } ;
struct nvkm_subdev {int index; int debug; int mutex; struct nvkm_device* device; struct nvkm_subdev_func const* func; } ;
struct nvkm_device {int dbgopt; } ;


 int __mutex_init (int *,char const*,int *) ;
 int nvkm_dbgopt (int ,char const*) ;
 int * nvkm_subdev_lock_class ;
 char** nvkm_subdev_name ;

void
nvkm_subdev_ctor(const struct nvkm_subdev_func *func,
   struct nvkm_device *device, int index,
   struct nvkm_subdev *subdev)
{
 const char *name = nvkm_subdev_name[index];
 subdev->func = func;
 subdev->device = device;
 subdev->index = index;

 __mutex_init(&subdev->mutex, name, &nvkm_subdev_lock_class[index]);
 subdev->debug = nvkm_dbgopt(device->dbgopt, name);
}

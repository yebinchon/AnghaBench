
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_udevice {struct nvkm_device* device; } ;
struct nvkm_object {int dummy; } ;
struct nvkm_device {int mutex; int refcount; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nvkm_device_fini (struct nvkm_device*,int) ;
 struct nvkm_udevice* nvkm_udevice (struct nvkm_object*) ;

__attribute__((used)) static int
nvkm_udevice_fini(struct nvkm_object *object, bool suspend)
{
 struct nvkm_udevice *udev = nvkm_udevice(object);
 struct nvkm_device *device = udev->device;
 int ret = 0;

 mutex_lock(&device->mutex);
 if (!--device->refcount) {
  ret = nvkm_device_fini(device, suspend);
  if (ret && suspend) {
   device->refcount++;
   goto done;
  }
 }

done:
 mutex_unlock(&device->mutex);
 return ret;
}

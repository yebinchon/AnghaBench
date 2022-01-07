
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_subdev {int dummy; } ;
struct nvkm_device {TYPE_1__* func; int head; scalar_t__ pri; int event; scalar_t__ disable_mask; } ;
struct TYPE_2__ {struct nvkm_device* (* dtor ) (struct nvkm_device*) ;} ;


 int NVKM_SUBDEV_NR ;
 int iounmap (scalar_t__) ;
 int kfree (struct nvkm_device*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nv_devices_mutex ;
 struct nvkm_subdev* nvkm_device_subdev (struct nvkm_device*,int) ;
 int nvkm_event_fini (int *) ;
 int nvkm_subdev_del (struct nvkm_subdev**) ;
 struct nvkm_device* stub1 (struct nvkm_device*) ;

void
nvkm_device_del(struct nvkm_device **pdevice)
{
 struct nvkm_device *device = *pdevice;
 int i;
 if (device) {
  mutex_lock(&nv_devices_mutex);
  device->disable_mask = 0;
  for (i = NVKM_SUBDEV_NR - 1; i >= 0; i--) {
   struct nvkm_subdev *subdev =
    nvkm_device_subdev(device, i);
   nvkm_subdev_del(&subdev);
  }

  nvkm_event_fini(&device->event);

  if (device->pri)
   iounmap(device->pri);
  list_del(&device->head);

  if (device->func->dtor)
   *pdevice = device->func->dtor(device);
  mutex_unlock(&nv_devices_mutex);

  kfree(*pdevice);
  *pdevice = ((void*)0);
 }
}

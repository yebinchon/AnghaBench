
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_object {int dummy; } ;
struct nvkm_udevice {struct nvkm_device* device; struct nvkm_object object; } ;
struct nvkm_device {int timer; } ;
struct nv_device_time_v0 {int time; int version; } ;


 int ENOSYS ;
 int nvif_ioctl (struct nvkm_object*,char*,int ) ;
 int nvif_unpack (int,void**,int *,struct nv_device_time_v0,int ,int ,int) ;
 int nvkm_timer_read (int ) ;

__attribute__((used)) static int
nvkm_udevice_time(struct nvkm_udevice *udev, void *data, u32 size)
{
 struct nvkm_object *object = &udev->object;
 struct nvkm_device *device = udev->device;
 union {
  struct nv_device_time_v0 v0;
 } *args = data;
 int ret = -ENOSYS;

 nvif_ioctl(object, "device time size %d\n", size);
 if (!(ret = nvif_unpack(ret, &data, &size, args->v0, 0, 0, 0))) {
  nvif_ioctl(object, "device time vers %d\n", args->v0.version);
  args->v0.time = nvkm_timer_read(device->timer);
 }

 return ret;
}

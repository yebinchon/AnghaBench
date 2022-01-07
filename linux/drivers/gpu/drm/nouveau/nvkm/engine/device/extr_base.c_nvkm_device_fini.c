
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_subdev {int dummy; } ;
struct nvkm_device {TYPE_1__* func; int therm; } ;
typedef int s64 ;
struct TYPE_2__ {int (* fini ) (struct nvkm_device*,int) ;} ;


 int NVKM_SUBDEV_NR ;
 int ktime_get () ;
 int ktime_to_us (int ) ;
 int nvdev_trace (struct nvkm_device*,char*,char const*,...) ;
 int nvkm_acpi_fini (struct nvkm_device*) ;
 struct nvkm_subdev* nvkm_device_subdev (struct nvkm_device*,int) ;
 int nvkm_fatal (struct nvkm_subdev*,char*,int) ;
 int nvkm_subdev_fini (struct nvkm_subdev*,int) ;
 int nvkm_subdev_init (struct nvkm_subdev*) ;
 int nvkm_therm_clkgate_fini (int ,int) ;
 int stub1 (struct nvkm_device*,int) ;

int
nvkm_device_fini(struct nvkm_device *device, bool suspend)
{
 const char *action = suspend ? "suspend" : "fini";
 struct nvkm_subdev *subdev;
 int ret, i;
 s64 time;

 nvdev_trace(device, "%s running...\n", action);
 time = ktime_to_us(ktime_get());

 nvkm_acpi_fini(device);

 for (i = NVKM_SUBDEV_NR - 1; i >= 0; i--) {
  if ((subdev = nvkm_device_subdev(device, i))) {
   ret = nvkm_subdev_fini(subdev, suspend);
   if (ret && suspend)
    goto fail;
  }
 }

 nvkm_therm_clkgate_fini(device->therm, suspend);

 if (device->func->fini)
  device->func->fini(device, suspend);

 time = ktime_to_us(ktime_get()) - time;
 nvdev_trace(device, "%s completed in %lldus...\n", action, time);
 return 0;

fail:
 do {
  if ((subdev = nvkm_device_subdev(device, i))) {
   int rret = nvkm_subdev_init(subdev);
   if (rret)
    nvkm_fatal(subdev, "failed restart, %d\n", ret);
  }
 } while (++i < NVKM_SUBDEV_NR);

 nvdev_trace(device, "%s failed with %d\n", action, ret);
 return ret;
}

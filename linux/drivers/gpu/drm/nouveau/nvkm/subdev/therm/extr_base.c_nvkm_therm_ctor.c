
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_therm_func {int dummy; } ;
struct TYPE_2__ {int alarm_program_lock; } ;
struct nvkm_therm {int mode; int suspend; int clkgating_enabled; int attr_set; int attr_get; int fan_set; int fan_get; TYPE_1__ sensor; int lock; int alarm; struct nvkm_therm_func const* func; int subdev; } ;
struct nvkm_device {int cfgopt; } ;


 int nvkm_alarm_init (int *,int ) ;
 int nvkm_boolopt (int ,char*,int) ;
 int nvkm_subdev_ctor (int *,struct nvkm_device*,int,int *) ;
 int nvkm_therm ;
 int nvkm_therm_alarm ;
 int nvkm_therm_attr_get ;
 int nvkm_therm_attr_set ;
 int nvkm_therm_fan_user_get ;
 int nvkm_therm_fan_user_set ;
 int spin_lock_init (int *) ;

void
nvkm_therm_ctor(struct nvkm_therm *therm, struct nvkm_device *device,
  int index, const struct nvkm_therm_func *func)
{
 nvkm_subdev_ctor(&nvkm_therm, device, index, &therm->subdev);
 therm->func = func;

 nvkm_alarm_init(&therm->alarm, nvkm_therm_alarm);
 spin_lock_init(&therm->lock);
 spin_lock_init(&therm->sensor.alarm_program_lock);

 therm->fan_get = nvkm_therm_fan_user_get;
 therm->fan_set = nvkm_therm_fan_user_set;
 therm->attr_get = nvkm_therm_attr_get;
 therm->attr_set = nvkm_therm_attr_set;
 therm->mode = therm->suspend = -1;

 therm->clkgating_enabled = nvkm_boolopt(device->cfgopt,
      "NvPmEnableGating", 0);
}

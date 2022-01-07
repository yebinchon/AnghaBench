
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_therm {TYPE_1__* fan; struct nvkm_subdev subdev; } ;
struct nvkm_gpio {int dummy; } ;
struct nvkm_device {struct nvkm_bios* bios; struct nvkm_gpio* gpio; } ;
struct nvkm_bios {int dummy; } ;
struct dcb_gpio_func {int line; int* log; int func; } ;
struct TYPE_2__ {int bios; int perf; int lock; int alarm; struct nvkm_therm* parent; struct dcb_gpio_func tach; int percent; int type; } ;


 int DCB_GPIO_FAN ;
 int DCB_GPIO_FAN_SENSE ;
 int DCB_GPIO_LOG_DIR_IN ;
 int DCB_GPIO_UNUSED ;
 int EINVAL ;
 int nvbios_fan_parse (struct nvkm_bios*,int *) ;
 int nvbios_perf_fan_parse (struct nvkm_bios*,int *) ;
 scalar_t__ nvbios_therm_fan_parse (struct nvkm_bios*,int *) ;
 int nvkm_alarm_init (int *,int ) ;
 int nvkm_debug (struct nvkm_subdev*,char*,...) ;
 int nvkm_error (struct nvkm_subdev*,char*) ;
 int nvkm_fan_alarm ;
 int nvkm_fannil_create (struct nvkm_therm*) ;
 int nvkm_fanpwm_create (struct nvkm_therm*,struct dcb_gpio_func*) ;
 int nvkm_fantog_create (struct nvkm_therm*,struct dcb_gpio_func*) ;
 int nvkm_gpio_find (struct nvkm_gpio*,int ,int ,int,struct dcb_gpio_func*) ;
 int nvkm_therm_fan_get (struct nvkm_therm*) ;
 int nvkm_therm_fan_safety_checks (struct nvkm_therm*) ;
 int nvkm_therm_fan_set_defaults (struct nvkm_therm*) ;
 int spin_lock_init (int *) ;

int
nvkm_therm_fan_ctor(struct nvkm_therm *therm)
{
 struct nvkm_subdev *subdev = &therm->subdev;
 struct nvkm_device *device = subdev->device;
 struct nvkm_gpio *gpio = device->gpio;
 struct nvkm_bios *bios = device->bios;
 struct dcb_gpio_func func;
 int ret;


 ret = nvkm_gpio_find(gpio, 0, DCB_GPIO_FAN, 0xff, &func);
 if (ret == 0) {

  if (func.line != 16 && func.log[0] & DCB_GPIO_LOG_DIR_IN) {
   nvkm_debug(subdev, "GPIO_FAN is in input mode\n");
   ret = -EINVAL;
  } else {
   ret = nvkm_fanpwm_create(therm, &func);
   if (ret != 0)
    ret = nvkm_fantog_create(therm, &func);
  }
 }


 if (ret != 0) {
  ret = nvkm_fannil_create(therm);
  if (ret)
   return ret;
 }

 nvkm_debug(subdev, "FAN control: %s\n", therm->fan->type);


 therm->fan->percent = nvkm_therm_fan_get(therm);


 ret = nvkm_gpio_find(gpio, 0, DCB_GPIO_FAN_SENSE, 0xff,
        &therm->fan->tach);
 if (ret)
  therm->fan->tach.func = DCB_GPIO_UNUSED;


 therm->fan->parent = therm;
 nvkm_alarm_init(&therm->fan->alarm, nvkm_fan_alarm);
 spin_lock_init(&therm->fan->lock);


 nvkm_therm_fan_set_defaults(therm);
 nvbios_perf_fan_parse(bios, &therm->fan->perf);
 if (!nvbios_fan_parse(bios, &therm->fan->bios)) {
  nvkm_debug(subdev, "parsing the fan table failed\n");
  if (nvbios_therm_fan_parse(bios, &therm->fan->bios))
   nvkm_error(subdev, "parsing both fan tables failed\n");
 }
 nvkm_therm_fan_safety_checks(therm);
 return 0;
}

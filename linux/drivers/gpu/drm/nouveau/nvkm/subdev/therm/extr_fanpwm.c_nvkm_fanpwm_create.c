
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {struct nvkm_device* device; } ;
struct nvkm_therm {TYPE_3__* fan; TYPE_2__* func; TYPE_1__ subdev; } ;
struct dcb_gpio_func {int line; int param; } ;
struct TYPE_6__ {char* type; int set; int get; } ;
struct nvkm_fanpwm {struct dcb_gpio_func func; TYPE_3__ base; } ;
struct nvkm_device {int cfgopt; struct nvkm_bios* bios; } ;
struct nvkm_bios {int dummy; } ;
struct nvbios_therm_fan {scalar_t__ type; } ;
struct TYPE_5__ {int (* pwm_get ) (struct nvkm_therm*,int ,int *,int *) ;int pwm_ctrl; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ NVBIOS_THERM_FAN_TOGGLE ;
 struct nvkm_fanpwm* kzalloc (int,int ) ;
 int nvbios_fan_parse (struct nvkm_bios*,struct nvbios_therm_fan*) ;
 int nvkm_boolopt (int ,char*,int ) ;
 int nvkm_fanpwm_get ;
 int nvkm_fanpwm_set ;
 int stub1 (struct nvkm_therm*,int ,int *,int *) ;

int
nvkm_fanpwm_create(struct nvkm_therm *therm, struct dcb_gpio_func *func)
{
 struct nvkm_device *device = therm->subdev.device;
 struct nvkm_bios *bios = device->bios;
 struct nvkm_fanpwm *fan;
 struct nvbios_therm_fan info = {};
 u32 divs, duty;

 nvbios_fan_parse(bios, &info);

 if (!nvkm_boolopt(device->cfgopt, "NvFanPWM", func->param) ||
     !therm->func->pwm_ctrl || info.type == NVBIOS_THERM_FAN_TOGGLE ||
      therm->func->pwm_get(therm, func->line, &divs, &duty) == -ENODEV)
  return -ENODEV;

 fan = kzalloc(sizeof(*fan), GFP_KERNEL);
 therm->fan = &fan->base;
 if (!fan)
  return -ENOMEM;

 fan->base.type = "PWM";
 fan->base.get = nvkm_fanpwm_get;
 fan->base.set = nvkm_fanpwm_set;
 fan->func = *func;
 return 0;
}

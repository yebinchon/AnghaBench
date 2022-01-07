
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_14__ {int temp; int hysteresis; } ;
struct TYPE_13__ {int temp; int hysteresis; } ;
struct TYPE_12__ {int temp; int hysteresis; } ;
struct TYPE_11__ {int temp; int hysteresis; } ;
struct TYPE_15__ {TYPE_6__ thrs_shutdown; TYPE_5__ thrs_critical; TYPE_4__ thrs_down_clock; TYPE_3__ thrs_fan_boost; } ;
struct nvkm_therm {TYPE_8__* func; TYPE_7__ bios_sensor; TYPE_2__* fan; } ;
typedef enum nvkm_therm_attr_type { ____Placeholder_nvkm_therm_attr_type } nvkm_therm_attr_type ;
struct TYPE_16__ {int (* program_alarms ) (struct nvkm_therm*) ;} ;
struct TYPE_9__ {int max_duty; int min_duty; } ;
struct TYPE_10__ {TYPE_1__ bios; } ;


 int EINVAL ;
 int nvkm_therm_fan_mode (struct nvkm_therm*,int) ;
 int stub1 (struct nvkm_therm*) ;
 int stub2 (struct nvkm_therm*) ;
 int stub3 (struct nvkm_therm*) ;
 int stub4 (struct nvkm_therm*) ;
 int stub5 (struct nvkm_therm*) ;
 int stub6 (struct nvkm_therm*) ;
 int stub7 (struct nvkm_therm*) ;
 int stub8 (struct nvkm_therm*) ;

int
nvkm_therm_attr_set(struct nvkm_therm *therm,
      enum nvkm_therm_attr_type type, int value)
{
 switch (type) {
 case 137:
  if (value < 0)
   value = 0;
  if (value > therm->fan->bios.max_duty)
   value = therm->fan->bios.max_duty;
  therm->fan->bios.min_duty = value;
  return 0;
 case 138:
  if (value < 0)
   value = 0;
  if (value < therm->fan->bios.min_duty)
   value = therm->fan->bios.min_duty;
  therm->fan->bios.max_duty = value;
  return 0;
 case 136:
  return nvkm_therm_fan_mode(therm, value);
 case 131:
  therm->bios_sensor.thrs_fan_boost.temp = value;
  therm->func->program_alarms(therm);
  return 0;
 case 130:
  therm->bios_sensor.thrs_fan_boost.hysteresis = value;
  therm->func->program_alarms(therm);
  return 0;
 case 133:
  therm->bios_sensor.thrs_down_clock.temp = value;
  therm->func->program_alarms(therm);
  return 0;
 case 132:
  therm->bios_sensor.thrs_down_clock.hysteresis = value;
  therm->func->program_alarms(therm);
  return 0;
 case 135:
  therm->bios_sensor.thrs_critical.temp = value;
  therm->func->program_alarms(therm);
  return 0;
 case 134:
  therm->bios_sensor.thrs_critical.hysteresis = value;
  therm->func->program_alarms(therm);
  return 0;
 case 129:
  therm->bios_sensor.thrs_shutdown.temp = value;
  therm->func->program_alarms(therm);
  return 0;
 case 128:
  therm->bios_sensor.thrs_shutdown.hysteresis = value;
  therm->func->program_alarms(therm);
  return 0;
 }

 return -EINVAL;
}

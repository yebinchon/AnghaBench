
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int therm_poll_alarm; } ;
struct nvkm_subdev {TYPE_1__* device; } ;
struct nvkm_therm {int bios_sensor; TYPE_2__ sensor; struct nvkm_subdev subdev; } ;
struct nvkm_bios {int dummy; } ;
struct TYPE_3__ {struct nvkm_bios* bios; } ;


 int NVBIOS_THERM_DOMAIN_CORE ;
 int alarm_timer_callback ;
 scalar_t__ nvbios_therm_sensor_parse (struct nvkm_bios*,int ,int *) ;
 int nvkm_alarm_init (int *,int ) ;
 int nvkm_error (struct nvkm_subdev*,char*) ;
 int nvkm_therm_temp_safety_checks (struct nvkm_therm*) ;
 int nvkm_therm_temp_set_defaults (struct nvkm_therm*) ;

int
nvkm_therm_sensor_ctor(struct nvkm_therm *therm)
{
 struct nvkm_subdev *subdev = &therm->subdev;
 struct nvkm_bios *bios = subdev->device->bios;

 nvkm_alarm_init(&therm->sensor.therm_poll_alarm, alarm_timer_callback);

 nvkm_therm_temp_set_defaults(therm);
 if (nvbios_therm_sensor_parse(bios, NVBIOS_THERM_DOMAIN_CORE,
          &therm->bios_sensor))
  nvkm_error(subdev, "nvbios_therm_sensor_parse failed\n");
 nvkm_therm_temp_safety_checks(therm);

 return 0;
}

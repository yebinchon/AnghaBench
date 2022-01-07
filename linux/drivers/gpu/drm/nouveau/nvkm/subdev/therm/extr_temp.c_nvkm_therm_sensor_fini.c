
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nvkm_timer {int dummy; } ;
struct TYPE_6__ {int therm_poll_alarm; } ;
struct TYPE_5__ {TYPE_1__* device; } ;
struct nvkm_therm {TYPE_3__ sensor; TYPE_2__ subdev; } ;
struct TYPE_4__ {struct nvkm_timer* timer; } ;


 int nvkm_timer_alarm (struct nvkm_timer*,int ,int *) ;

int
nvkm_therm_sensor_fini(struct nvkm_therm *therm, bool suspend)
{
 struct nvkm_timer *tmr = therm->subdev.device->timer;
 if (suspend)
  nvkm_timer_alarm(tmr, 0, &therm->sensor.therm_poll_alarm);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nvkm_timer {int dummy; } ;
struct nvkm_subdev {TYPE_1__* device; } ;
struct nvkm_therm {int mode; int cstate; int lock; int alarm; TYPE_3__* fan; struct nvkm_subdev subdev; } ;
struct TYPE_5__ {int fan_mode; } ;
struct TYPE_6__ {TYPE_2__ bios; } ;
struct TYPE_4__ {struct nvkm_timer* timer; } ;
 int nvkm_debug (struct nvkm_subdev*,char*,int) ;
 int nvkm_therm_fan_get (struct nvkm_therm*) ;
 int nvkm_therm_fan_set (struct nvkm_therm*,int,int) ;
 int nvkm_therm_update_linear (struct nvkm_therm*) ;
 int nvkm_therm_update_linear_fallback (struct nvkm_therm*) ;
 int nvkm_therm_update_trip (struct nvkm_therm*) ;
 int nvkm_timer_alarm (struct nvkm_timer*,unsigned long long,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
nvkm_therm_update(struct nvkm_therm *therm, int mode)
{
 struct nvkm_subdev *subdev = &therm->subdev;
 struct nvkm_timer *tmr = subdev->device->timer;
 unsigned long flags;
 bool immd = 1;
 bool poll = 1;
 int duty = -1;

 spin_lock_irqsave(&therm->lock, flags);
 if (mode < 0)
  mode = therm->mode;
 therm->mode = mode;

 switch (mode) {
 case 129:
  nvkm_timer_alarm(tmr, 0, &therm->alarm);
  duty = nvkm_therm_fan_get(therm);
  if (duty < 0)
   duty = 100;
  poll = 0;
  break;
 case 130:
  switch(therm->fan->bios.fan_mode) {
  case 131:
   duty = nvkm_therm_update_trip(therm);
   break;
  case 133:
   duty = nvkm_therm_update_linear(therm);
   break;
  case 132:
   if (therm->cstate) {
    duty = therm->cstate;
    poll = 0;
   } else {
    duty = nvkm_therm_update_linear_fallback(therm);
   }
   break;
  }
  immd = 0;
  break;
 case 128:
 default:
  nvkm_timer_alarm(tmr, 0, &therm->alarm);
  poll = 0;
 }

 if (poll)
  nvkm_timer_alarm(tmr, 1000000000ULL, &therm->alarm);
 spin_unlock_irqrestore(&therm->lock, flags);

 if (duty >= 0) {
  nvkm_debug(subdev, "FAN target request: %d%%\n", duty);
  nvkm_therm_fan_set(therm, immd, duty);
 }
}

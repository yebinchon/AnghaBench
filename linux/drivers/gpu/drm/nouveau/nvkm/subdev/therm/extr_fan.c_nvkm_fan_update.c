
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u16 ;
struct nvkm_timer {int dummy; } ;
struct nvkm_subdev {TYPE_1__* device; } ;
struct nvkm_therm {struct nvkm_subdev subdev; } ;
struct TYPE_4__ {int bump_period; int slow_down_period; int max_duty; int min_duty; } ;
struct nvkm_fan {int percent; int (* get ) (struct nvkm_therm*) ;int (* set ) (struct nvkm_therm*,int) ;int alarm; TYPE_2__ bios; int lock; struct nvkm_therm* parent; } ;
struct TYPE_3__ {struct nvkm_timer* timer; } ;


 int max (int,int) ;
 int max_t (int ,int,int ) ;
 int min (int,int) ;
 int min_t (int ,int,int ) ;
 int nvkm_debug (struct nvkm_subdev*,char*,int) ;
 int nvkm_timer_alarm (struct nvkm_timer*,int,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct nvkm_therm*) ;
 int stub2 (struct nvkm_therm*,int) ;
 int u8 ;

__attribute__((used)) static int
nvkm_fan_update(struct nvkm_fan *fan, bool immediate, int target)
{
 struct nvkm_therm *therm = fan->parent;
 struct nvkm_subdev *subdev = &therm->subdev;
 struct nvkm_timer *tmr = subdev->device->timer;
 unsigned long flags;
 int ret = 0;
 int duty;


 spin_lock_irqsave(&fan->lock, flags);
 if (target < 0)
  target = fan->percent;
 target = max_t(u8, target, fan->bios.min_duty);
 target = min_t(u8, target, fan->bios.max_duty);
 if (fan->percent != target) {
  nvkm_debug(subdev, "FAN target: %d\n", target);
  fan->percent = target;
 }


 duty = fan->get(therm);
 if (duty == target) {
  spin_unlock_irqrestore(&fan->lock, flags);
  return 0;
 }


 if (!immediate && duty >= 0) {




  if (duty < target)
   duty = min(duty + 3, target);
  else if (duty > target)
   duty = max(duty - 3, target);
 } else {
  duty = target;
 }

 nvkm_debug(subdev, "FAN update: %d\n", duty);
 ret = fan->set(therm, duty);
 if (ret) {
  spin_unlock_irqrestore(&fan->lock, flags);
  return ret;
 }




 spin_unlock_irqrestore(&fan->lock, flags);


 if (target != duty) {
  u16 bump_period = fan->bios.bump_period;
  u16 slow_down_period = fan->bios.slow_down_period;
  u64 delay;

  if (duty > target)
   delay = slow_down_period;
  else if (duty == target)
   delay = min(bump_period, slow_down_period) ;
  else
   delay = bump_period;

  nvkm_timer_alarm(tmr, delay * 1000 * 1000, &fan->alarm);
 }

 return ret;
}

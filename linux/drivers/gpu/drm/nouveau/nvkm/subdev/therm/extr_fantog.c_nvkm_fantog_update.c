
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct nvkm_timer {int dummy; } ;
struct TYPE_4__ {struct nvkm_device* device; } ;
struct nvkm_therm {TYPE_2__ subdev; } ;
struct nvkm_gpio {int dummy; } ;
struct TYPE_3__ {struct nvkm_therm* parent; } ;
struct nvkm_fantog {int percent; int period_us; int lock; int alarm; TYPE_1__ base; } ;
struct nvkm_device {struct nvkm_gpio* gpio; struct nvkm_timer* timer; } ;


 int DCB_GPIO_FAN ;
 int nvkm_gpio_get (struct nvkm_gpio*,int ,int ,int) ;
 int nvkm_gpio_set (struct nvkm_gpio*,int ,int ,int,int) ;
 int nvkm_timer_alarm (struct nvkm_timer*,int,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
nvkm_fantog_update(struct nvkm_fantog *fan, int percent)
{
 struct nvkm_therm *therm = fan->base.parent;
 struct nvkm_device *device = therm->subdev.device;
 struct nvkm_timer *tmr = device->timer;
 struct nvkm_gpio *gpio = device->gpio;
 unsigned long flags;
 int duty;

 spin_lock_irqsave(&fan->lock, flags);
 if (percent < 0)
  percent = fan->percent;
 fan->percent = percent;

 duty = !nvkm_gpio_get(gpio, 0, DCB_GPIO_FAN, 0xff);
 nvkm_gpio_set(gpio, 0, DCB_GPIO_FAN, 0xff, duty);

 if (percent != (duty * 100)) {
  u64 next_change = (percent * fan->period_us) / 100;
  if (!duty)
   next_change = fan->period_us - next_change;
  nvkm_timer_alarm(tmr, next_change * 1000, &fan->alarm);
 }
 spin_unlock_irqrestore(&fan->lock, flags);
}

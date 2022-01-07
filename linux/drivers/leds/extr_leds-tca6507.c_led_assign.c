
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tca6507_led {scalar_t__ offtime; scalar_t__ ontime; struct tca6507_chip* chip; } ;
struct tca6507_chip {int work; scalar_t__ reg_set; int lock; } ;


 int led_prepare (struct tca6507_led*) ;
 int led_release (struct tca6507_led*) ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int led_assign(struct tca6507_led *led)
{
 struct tca6507_chip *tca = led->chip;
 int err;
 unsigned long flags;

 spin_lock_irqsave(&tca->lock, flags);
 led_release(led);
 err = led_prepare(led);
 if (err) {




  led->ontime = 0;
  led->offtime = 0;
  led_prepare(led);
 }
 spin_unlock_irqrestore(&tca->lock, flags);

 if (tca->reg_set)
  schedule_work(&tca->work);
 return err;
}

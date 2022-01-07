
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct pwm_args {scalar_t__ period; } ;
struct max77693_haptic {int magnitude; unsigned int pwm_duty; int work; int pwm_dev; } ;
struct input_dev {int dummy; } ;
struct TYPE_4__ {int strong_magnitude; int weak_magnitude; } ;
struct TYPE_3__ {TYPE_2__ rumble; } ;
struct ff_effect {TYPE_1__ u; } ;


 int MAX_MAGNITUDE_SHIFT ;
 struct max77693_haptic* input_get_drvdata (struct input_dev*) ;
 int pwm_get_args (int ,struct pwm_args*) ;
 int schedule_work (int *) ;

__attribute__((used)) static int max77693_haptic_play_effect(struct input_dev *dev, void *data,
           struct ff_effect *effect)
{
 struct max77693_haptic *haptic = input_get_drvdata(dev);
 struct pwm_args pargs;
 u64 period_mag_multi;

 haptic->magnitude = effect->u.rumble.strong_magnitude;
 if (!haptic->magnitude)
  haptic->magnitude = effect->u.rumble.weak_magnitude;






 pwm_get_args(haptic->pwm_dev, &pargs);
 period_mag_multi = (u64)pargs.period * haptic->magnitude;
 haptic->pwm_duty = (unsigned int)(period_mag_multi >>
      MAX_MAGNITUDE_SHIFT);

 schedule_work(&haptic->work);

 return 0;
}

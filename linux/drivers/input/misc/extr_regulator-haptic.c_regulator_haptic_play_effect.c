
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct regulator_haptic {int work; scalar_t__ magnitude; } ;
struct input_dev {int dummy; } ;
struct TYPE_3__ {scalar_t__ weak_magnitude; scalar_t__ strong_magnitude; } ;
struct TYPE_4__ {TYPE_1__ rumble; } ;
struct ff_effect {TYPE_2__ u; } ;


 struct regulator_haptic* input_get_drvdata (struct input_dev*) ;
 int schedule_work (int *) ;

__attribute__((used)) static int regulator_haptic_play_effect(struct input_dev *input, void *data,
     struct ff_effect *effect)
{
 struct regulator_haptic *haptic = input_get_drvdata(input);

 haptic->magnitude = effect->u.rumble.strong_magnitude;
 if (!haptic->magnitude)
  haptic->magnitude = effect->u.rumble.weak_magnitude;

 schedule_work(&haptic->work);

 return 0;
}

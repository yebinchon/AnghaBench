
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct input_dev {int dummy; } ;
struct TYPE_4__ {scalar_t__ strong_magnitude; scalar_t__ weak_magnitude; } ;
struct TYPE_3__ {TYPE_2__ rumble; } ;
struct ff_effect {TYPE_1__ u; } ;
struct drv2667_data {scalar_t__ magnitude; int work; } ;


 struct drv2667_data* input_get_drvdata (struct input_dev*) ;
 int schedule_work (int *) ;

__attribute__((used)) static int drv2667_haptics_play(struct input_dev *input, void *data,
    struct ff_effect *effect)
{
 struct drv2667_data *haptics = input_get_drvdata(input);

 if (effect->u.rumble.strong_magnitude > 0)
  haptics->magnitude = effect->u.rumble.strong_magnitude;
 else if (effect->u.rumble.weak_magnitude > 0)
  haptics->magnitude = effect->u.rumble.weak_magnitude;
 else
  haptics->magnitude = 0;

 schedule_work(&haptics->work);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct input_dev {int dummy; } ;
struct gpio_vibrator {int running; int play_work; } ;
struct TYPE_3__ {int strong_magnitude; int weak_magnitude; } ;
struct TYPE_4__ {TYPE_1__ rumble; } ;
struct ff_effect {TYPE_2__ u; } ;


 struct gpio_vibrator* input_get_drvdata (struct input_dev*) ;
 int schedule_work (int *) ;

__attribute__((used)) static int gpio_vibrator_play_effect(struct input_dev *dev, void *data,
         struct ff_effect *effect)
{
 struct gpio_vibrator *vibrator = input_get_drvdata(dev);
 int level;

 level = effect->u.rumble.strong_magnitude;
 if (!level)
  level = effect->u.rumble.weak_magnitude;

 vibrator->running = level;
 schedule_work(&vibrator->play_work);

 return 0;
}

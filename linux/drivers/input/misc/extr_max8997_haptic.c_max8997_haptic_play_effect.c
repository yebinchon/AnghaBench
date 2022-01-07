
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct max8997_haptic {int work; scalar_t__ level; } ;
struct input_dev {int dummy; } ;
struct TYPE_3__ {scalar_t__ weak_magnitude; scalar_t__ strong_magnitude; } ;
struct TYPE_4__ {TYPE_1__ rumble; } ;
struct ff_effect {TYPE_2__ u; } ;


 struct max8997_haptic* input_get_drvdata (struct input_dev*) ;
 int schedule_work (int *) ;

__attribute__((used)) static int max8997_haptic_play_effect(struct input_dev *dev, void *data,
      struct ff_effect *effect)
{
 struct max8997_haptic *chip = input_get_drvdata(dev);

 chip->level = effect->u.rumble.strong_magnitude;
 if (!chip->level)
  chip->level = effect->u.rumble.weak_magnitude;

 schedule_work(&chip->work);

 return 0;
}

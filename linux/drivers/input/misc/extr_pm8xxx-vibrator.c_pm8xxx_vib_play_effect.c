
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pm8xxx_vib {int speed; int work; } ;
struct input_dev {int dummy; } ;
struct TYPE_3__ {int strong_magnitude; int weak_magnitude; } ;
struct TYPE_4__ {TYPE_1__ rumble; } ;
struct ff_effect {TYPE_2__ u; } ;


 struct pm8xxx_vib* input_get_drvdata (struct input_dev*) ;
 int schedule_work (int *) ;

__attribute__((used)) static int pm8xxx_vib_play_effect(struct input_dev *dev, void *data,
      struct ff_effect *effect)
{
 struct pm8xxx_vib *vib = input_get_drvdata(dev);

 vib->speed = effect->u.rumble.strong_magnitude >> 8;
 if (!vib->speed)
  vib->speed = effect->u.rumble.weak_magnitude >> 9;

 schedule_work(&vib->work);

 return 0;
}

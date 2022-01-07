
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vibra_info {int direction; int play_work; int strong_speed; int weak_speed; } ;
struct input_dev {int dummy; } ;
struct TYPE_3__ {int strong_magnitude; int weak_magnitude; } ;
struct TYPE_4__ {TYPE_1__ rumble; } ;
struct ff_effect {scalar_t__ direction; TYPE_2__ u; } ;


 scalar_t__ EFFECT_DIR_180_DEG ;
 struct vibra_info* input_get_drvdata (struct input_dev*) ;
 int schedule_work (int *) ;

__attribute__((used)) static int vibra_play(struct input_dev *input, void *data,
        struct ff_effect *effect)
{
 struct vibra_info *info = input_get_drvdata(input);

 info->weak_speed = effect->u.rumble.weak_magnitude;
 info->strong_speed = effect->u.rumble.strong_magnitude;
 info->direction = effect->direction < EFFECT_DIR_180_DEG ? 1 : -1;

 schedule_work(&info->play_work);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vibra_info {int play_work; int strength; } ;
struct input_dev {int dummy; } ;
struct TYPE_3__ {int weak_magnitude; } ;
struct TYPE_4__ {TYPE_1__ rumble; } ;
struct ff_effect {TYPE_2__ u; } ;


 struct vibra_info* input_get_drvdata (struct input_dev*) ;
 int schedule_work (int *) ;

__attribute__((used)) static int sc27xx_vibra_play(struct input_dev *input, void *data,
        struct ff_effect *effect)
{
 struct vibra_info *info = input_get_drvdata(input);

 info->strength = effect->u.rumble.weak_magnitude;
 schedule_work(&info->play_work);

 return 0;
}

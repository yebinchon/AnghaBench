
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int expires; } ;
struct pattern_trig_data {int npatterns; TYPE_1__ timer; scalar_t__ patterns; scalar_t__ next; scalar_t__ curr; scalar_t__ delta_t; int repeat; scalar_t__ is_hw_pattern; } ;
struct led_classdev {int (* pattern_set ) (struct led_classdev*,scalar_t__,int,int ) ;struct pattern_trig_data* trigger_data; } ;


 int EINVAL ;
 int add_timer (TYPE_1__*) ;
 int jiffies ;
 int stub1 (struct led_classdev*,scalar_t__,int,int ) ;

__attribute__((used)) static int pattern_trig_start_pattern(struct led_classdev *led_cdev)
{
 struct pattern_trig_data *data = led_cdev->trigger_data;

 if (!data->npatterns)
  return 0;

 if (data->is_hw_pattern) {
  return led_cdev->pattern_set(led_cdev, data->patterns,
          data->npatterns, data->repeat);
 }


 if (data->npatterns < 2)
  return -EINVAL;

 data->delta_t = 0;
 data->curr = data->patterns;
 data->next = data->patterns + 1;
 data->timer.expires = jiffies;
 add_timer(&data->timer);

 return 0;
}

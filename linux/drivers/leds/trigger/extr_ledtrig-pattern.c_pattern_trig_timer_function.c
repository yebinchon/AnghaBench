
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct pattern_trig_data {scalar_t__ delta_t; int timer; int led_cdev; TYPE_2__* curr; TYPE_1__* next; int repeat; int is_indefinite; } ;
struct TYPE_4__ {scalar_t__ brightness; scalar_t__ delta_t; } ;
struct TYPE_3__ {scalar_t__ brightness; int delta_t; } ;


 scalar_t__ UPDATE_INTERVAL ;
 struct pattern_trig_data* data ;
 struct pattern_trig_data* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int led_set_brightness (int ,scalar_t__) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (scalar_t__) ;
 scalar_t__ pattern_trig_compute_brightness (struct pattern_trig_data*) ;
 int pattern_trig_update_patterns (struct pattern_trig_data*) ;
 int timer ;

__attribute__((used)) static void pattern_trig_timer_function(struct timer_list *t)
{
 struct pattern_trig_data *data = from_timer(data, t, timer);

 for (;;) {
  if (!data->is_indefinite && !data->repeat)
   break;

  if (data->curr->brightness == data->next->brightness) {

   led_set_brightness(data->led_cdev,
        data->curr->brightness);
   mod_timer(&data->timer,
      jiffies + msecs_to_jiffies(data->curr->delta_t));
   if (!data->next->delta_t) {

    pattern_trig_update_patterns(data);
   }

   pattern_trig_update_patterns(data);
  } else {







   if (data->delta_t > data->curr->delta_t) {
    pattern_trig_update_patterns(data);
    continue;
   }

   led_set_brightness(data->led_cdev,
        pattern_trig_compute_brightness(data));
   mod_timer(&data->timer,
      jiffies + msecs_to_jiffies(UPDATE_INTERVAL));


   data->delta_t += UPDATE_INTERVAL;
  }

  break;
 }
}

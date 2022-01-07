
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct hidpp_scroll_counter {int wheel_multiplier; int remainder; unsigned long long last_time; int direction; } ;


 int REL_WHEEL ;
 int REL_WHEEL_HI_RES ;
 int abs (int) ;
 int input_report_rel (struct input_dev*,int ,int) ;
 unsigned long long sched_clock () ;

__attribute__((used)) static void hidpp_scroll_counter_handle_scroll(struct input_dev *input_dev,
            struct hidpp_scroll_counter *counter,
            int hi_res_value)
{
 int low_res_value, remainder, direction;
 unsigned long long now, previous;

 hi_res_value = hi_res_value * 120/counter->wheel_multiplier;
 input_report_rel(input_dev, REL_WHEEL_HI_RES, hi_res_value);

 remainder = counter->remainder;
 direction = hi_res_value > 0 ? 1 : -1;

 now = sched_clock();
 previous = counter->last_time;
 counter->last_time = now;






 if (now - previous > 1000000000 || direction != counter->direction)
  remainder = 0;

 counter->direction = direction;
 remainder += hi_res_value;






 if (abs(remainder) >= 60) {





  low_res_value = remainder / 120;
  if (low_res_value == 0)
   low_res_value = (hi_res_value > 0 ? 1 : -1);
  input_report_rel(input_dev, REL_WHEEL, low_res_value);
  remainder -= low_res_value * 120;
 }
 counter->remainder = remainder;
}

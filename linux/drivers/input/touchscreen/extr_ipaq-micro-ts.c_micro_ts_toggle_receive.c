
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct touchscreen_data {struct ipaq_micro* micro; } ;
struct ipaq_micro {int lock; struct touchscreen_data* ts_data; int * ts; } ;


 int * micro_ts_receive ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void micro_ts_toggle_receive(struct touchscreen_data *ts, bool enable)
{
 struct ipaq_micro *micro = ts->micro;

 spin_lock_irq(&micro->lock);

 if (enable) {
  micro->ts = micro_ts_receive;
  micro->ts_data = ts;
 } else {
  micro->ts = ((void*)0);
  micro->ts_data = ((void*)0);
 }

 spin_unlock_irq(&ts->micro->lock);
}

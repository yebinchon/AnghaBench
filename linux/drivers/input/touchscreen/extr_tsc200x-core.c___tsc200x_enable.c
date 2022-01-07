
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsc200x {scalar_t__ esd_timeout; int esd_work; int last_valid_interrupt; scalar_t__ reset_gpio; } ;


 int jiffies ;
 int msecs_to_jiffies (scalar_t__) ;
 int round_jiffies_relative (int ) ;
 int schedule_delayed_work (int *,int ) ;
 int tsc200x_start_scan (struct tsc200x*) ;

__attribute__((used)) static void __tsc200x_enable(struct tsc200x *ts)
{
 tsc200x_start_scan(ts);

 if (ts->esd_timeout && ts->reset_gpio) {
  ts->last_valid_interrupt = jiffies;
  schedule_delayed_work(&ts->esd_work,
    round_jiffies_relative(
     msecs_to_jiffies(ts->esd_timeout)));
 }
}

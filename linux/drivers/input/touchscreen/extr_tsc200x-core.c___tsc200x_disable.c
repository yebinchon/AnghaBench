
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsc200x {int irq; int esd_work; int penup_timer; } ;


 int cancel_delayed_work_sync (int *) ;
 int del_timer_sync (int *) ;
 int disable_irq (int ) ;
 int enable_irq (int ) ;
 int tsc200x_stop_scan (struct tsc200x*) ;

__attribute__((used)) static void __tsc200x_disable(struct tsc200x *ts)
{
 tsc200x_stop_scan(ts);

 disable_irq(ts->irq);
 del_timer_sync(&ts->penup_timer);

 cancel_delayed_work_sync(&ts->esd_work);

 enable_irq(ts->irq);
}

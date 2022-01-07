
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct ad7877 {int lock; } ;


 int ad7877_ts_event_release (struct ad7877*) ;
 struct ad7877* from_timer (int ,struct timer_list*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int timer ;
 struct ad7877* ts ;

__attribute__((used)) static void ad7877_timer(struct timer_list *t)
{
 struct ad7877 *ts = from_timer(ts, t, timer);
 unsigned long flags;

 spin_lock_irqsave(&ts->lock, flags);
 ad7877_ts_event_release(ts);
 spin_unlock_irqrestore(&ts->lock, flags);
}

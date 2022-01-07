
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsc200x {int lock; } ;
struct timer_list {int dummy; } ;


 struct tsc200x* from_timer (int ,struct timer_list*,int ) ;
 int penup_timer ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct tsc200x* ts ;
 int tsc200x_update_pen_state (struct tsc200x*,int ,int ,int ) ;

__attribute__((used)) static void tsc200x_penup_timer(struct timer_list *t)
{
 struct tsc200x *ts = from_timer(ts, t, penup_timer);
 unsigned long flags;

 spin_lock_irqsave(&ts->lock, flags);
 tsc200x_update_pen_state(ts, 0, 0, 0);
 spin_unlock_irqrestore(&ts->lock, flags);
}

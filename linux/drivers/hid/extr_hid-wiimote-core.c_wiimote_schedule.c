
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct wiimote_data {TYPE_1__ state; } ;


 int __wiimote_schedule (struct wiimote_data*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void wiimote_schedule(struct wiimote_data *wdata)
{
 unsigned long flags;

 spin_lock_irqsave(&wdata->state.lock, flags);
 __wiimote_schedule(wdata);
 spin_unlock_irqrestore(&wdata->state.lock, flags);
}

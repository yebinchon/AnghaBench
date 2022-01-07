
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wm97xx {int pen_event_work; int ts_workq; TYPE_1__* mach_ops; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int (* irq_enable ) (struct wm97xx*,int ) ;} ;


 int IRQ_HANDLED ;
 int queue_work (int ,int *) ;
 int stub1 (struct wm97xx*,int ) ;
 int work_pending (int *) ;

__attribute__((used)) static irqreturn_t wm97xx_pen_interrupt(int irq, void *dev_id)
{
 struct wm97xx *wm = dev_id;

 if (!work_pending(&wm->pen_event_work)) {
  wm->mach_ops->irq_enable(wm, 0);
  queue_work(wm->ts_workq, &wm->pen_event_work);
 }

 return IRQ_HANDLED;
}

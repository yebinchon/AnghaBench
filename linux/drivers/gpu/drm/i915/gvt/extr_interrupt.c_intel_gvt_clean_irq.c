
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int timer; } ;
struct intel_gvt_irq {TYPE_1__ vblank_timer; } ;
struct intel_gvt {struct intel_gvt_irq irq; } ;


 int hrtimer_cancel (int *) ;

void intel_gvt_clean_irq(struct intel_gvt *gvt)
{
 struct intel_gvt_irq *irq = &gvt->irq;

 hrtimer_cancel(&irq->vblank_timer.timer);
}

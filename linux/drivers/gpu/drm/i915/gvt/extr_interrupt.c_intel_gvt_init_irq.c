
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int function; } ;
struct intel_gvt_vblank_timer {int period; TYPE_1__ timer; } ;
struct intel_gvt_irq {TYPE_2__* ops; int irq_map; struct intel_gvt_vblank_timer vblank_timer; } ;
struct intel_gvt {struct intel_gvt_irq irq; } ;
struct TYPE_4__ {int (* init_irq ) (struct intel_gvt_irq*) ;} ;


 int CLOCK_MONOTONIC ;
 int HRTIMER_MODE_ABS ;
 int VBLANK_TIMER_PERIOD ;
 int gen8_irq_map ;
 TYPE_2__ gen8_irq_ops ;
 int gvt_dbg_core (char*) ;
 int hrtimer_init (TYPE_1__*,int ,int ) ;
 int init_events (struct intel_gvt_irq*) ;
 int init_irq_map (struct intel_gvt_irq*) ;
 int stub1 (struct intel_gvt_irq*) ;
 int vblank_timer_fn ;

int intel_gvt_init_irq(struct intel_gvt *gvt)
{
 struct intel_gvt_irq *irq = &gvt->irq;
 struct intel_gvt_vblank_timer *vblank_timer = &irq->vblank_timer;

 gvt_dbg_core("init irq framework\n");

 irq->ops = &gen8_irq_ops;
 irq->irq_map = gen8_irq_map;


 init_events(irq);


 irq->ops->init_irq(irq);

 init_irq_map(irq);

 hrtimer_init(&vblank_timer->timer, CLOCK_MONOTONIC, HRTIMER_MODE_ABS);
 vblank_timer->timer.function = vblank_timer_fn;
 vblank_timer->period = VBLANK_TIMER_PERIOD;

 return 0;
}

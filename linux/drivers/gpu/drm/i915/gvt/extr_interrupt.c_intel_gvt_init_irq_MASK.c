#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  function; } ;
struct intel_gvt_vblank_timer {int /*<<< orphan*/  period; TYPE_1__ timer; } ;
struct intel_gvt_irq {TYPE_2__* ops; int /*<<< orphan*/  irq_map; struct intel_gvt_vblank_timer vblank_timer; } ;
struct intel_gvt {struct intel_gvt_irq irq; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* init_irq ) (struct intel_gvt_irq*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int /*<<< orphan*/  HRTIMER_MODE_ABS ; 
 int /*<<< orphan*/  VBLANK_TIMER_PERIOD ; 
 int /*<<< orphan*/  gen8_irq_map ; 
 TYPE_2__ gen8_irq_ops ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_gvt_irq*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_gvt_irq*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_gvt_irq*) ; 
 int /*<<< orphan*/  vblank_timer_fn ; 

int FUNC5(struct intel_gvt *gvt)
{
	struct intel_gvt_irq *irq = &gvt->irq;
	struct intel_gvt_vblank_timer *vblank_timer = &irq->vblank_timer;

	FUNC0("init irq framework\n");

	irq->ops = &gen8_irq_ops;
	irq->irq_map = gen8_irq_map;

	/* common event initialization */
	FUNC2(irq);

	/* gen specific initialization */
	irq->ops->init_irq(irq);

	FUNC3(irq);

	FUNC1(&vblank_timer->timer, CLOCK_MONOTONIC, HRTIMER_MODE_ABS);
	vblank_timer->timer.function = vblank_timer_fn;
	vblank_timer->period = VBLANK_TIMER_PERIOD;

	return 0;
}
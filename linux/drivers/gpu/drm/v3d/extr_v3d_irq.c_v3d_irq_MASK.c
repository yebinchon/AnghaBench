#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct v3d_fence {int /*<<< orphan*/  base; int /*<<< orphan*/  seqno; } ;
struct v3d_dev {scalar_t__ single_irq_line; int /*<<< orphan*/  dev; int /*<<< orphan*/  drm; TYPE_6__* csd_job; TYPE_4__* render_job; TYPE_2__* bin_job; int /*<<< orphan*/  overflow_mem_work; } ;
typedef  scalar_t__ irqreturn_t ;
struct TYPE_11__ {int /*<<< orphan*/  irq_fence; } ;
struct TYPE_12__ {TYPE_5__ base; } ;
struct TYPE_9__ {int /*<<< orphan*/  irq_fence; } ;
struct TYPE_10__ {TYPE_3__ base; } ;
struct TYPE_7__ {int /*<<< orphan*/  irq_fence; } ;
struct TYPE_8__ {TYPE_1__ base; } ;

/* Variables and functions */
 scalar_t__ IRQ_HANDLED ; 
 scalar_t__ IRQ_NONE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  V3D_CTL_INT_CLR ; 
 int /*<<< orphan*/  V3D_CTL_INT_STS ; 
 int V3D_INT_CSDDONE ; 
 int V3D_INT_FLDONE ; 
 int V3D_INT_FRDONE ; 
 int V3D_INT_GMPV ; 
 int V3D_INT_OUTOMEM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct v3d_fence* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int,void*) ; 

__attribute__((used)) static irqreturn_t
FUNC10(int irq, void *arg)
{
	struct v3d_dev *v3d = arg;
	u32 intsts;
	irqreturn_t status = IRQ_NONE;

	intsts = FUNC0(0, V3D_CTL_INT_STS);

	/* Acknowledge the interrupts we're handling here. */
	FUNC1(0, V3D_CTL_INT_CLR, intsts);

	if (intsts & V3D_INT_OUTOMEM) {
		/* Note that the OOM status is edge signaled, so the
		 * interrupt won't happen again until the we actually
		 * add more memory.  Also, as of V3D 4.1, FLDONE won't
		 * be reported until any OOM state has been cleared.
		 */
		FUNC4(&v3d->overflow_mem_work);
		status = IRQ_HANDLED;
	}

	if (intsts & V3D_INT_FLDONE) {
		struct v3d_fence *fence =
			FUNC5(v3d->bin_job->base.irq_fence);

		FUNC6(&v3d->drm, fence->seqno);
		FUNC3(&fence->base);
		status = IRQ_HANDLED;
	}

	if (intsts & V3D_INT_FRDONE) {
		struct v3d_fence *fence =
			FUNC5(v3d->render_job->base.irq_fence);

		FUNC8(&v3d->drm, fence->seqno);
		FUNC3(&fence->base);
		status = IRQ_HANDLED;
	}

	if (intsts & V3D_INT_CSDDONE) {
		struct v3d_fence *fence =
			FUNC5(v3d->csd_job->base.irq_fence);

		FUNC7(&v3d->drm, fence->seqno);
		FUNC3(&fence->base);
		status = IRQ_HANDLED;
	}

	/* We shouldn't be triggering these if we have GMP in
	 * always-allowed mode.
	 */
	if (intsts & V3D_INT_GMPV)
		FUNC2(v3d->dev, "GMP violation\n");

	/* V3D 4.2 wires the hub and core IRQs together, so if we &
	 * didn't see the common one then check hub for MMU IRQs.
	 */
	if (v3d->single_irq_line && status == IRQ_NONE)
		return FUNC9(irq, arg);

	return status;
}
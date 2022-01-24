#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint32_t ;
struct vc4_dev {int /*<<< orphan*/  job_lock; int /*<<< orphan*/  overflow_mem_work; } ;
struct drm_device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  V3D_INTCTL ; 
 int /*<<< orphan*/  V3D_INTDIS ; 
 int V3D_INT_FLDONE ; 
 int V3D_INT_FRDONE ; 
 int V3D_INT_OUTOMEM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct vc4_dev* FUNC6 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_device*) ; 

irqreturn_t
FUNC9(int irq, void *arg)
{
	struct drm_device *dev = arg;
	struct vc4_dev *vc4 = FUNC6(dev);
	uint32_t intctl;
	irqreturn_t status = IRQ_NONE;

	FUNC2();
	intctl = FUNC0(V3D_INTCTL);

	/* Acknowledge the interrupts we're handling here. The binner
	 * last flush / render frame done interrupt will be cleared,
	 * while OUTOMEM will stay high until the underlying cause is
	 * cleared.
	 */
	FUNC1(V3D_INTCTL, intctl);

	if (intctl & V3D_INT_OUTOMEM) {
		/* Disable OUTOMEM until the work is done. */
		FUNC1(V3D_INTDIS, V3D_INT_OUTOMEM);
		FUNC3(&vc4->overflow_mem_work);
		status = IRQ_HANDLED;
	}

	if (intctl & V3D_INT_FLDONE) {
		FUNC4(&vc4->job_lock);
		FUNC7(dev);
		FUNC5(&vc4->job_lock);
		status = IRQ_HANDLED;
	}

	if (intctl & V3D_INT_FRDONE) {
		FUNC4(&vc4->job_lock);
		FUNC8(dev);
		FUNC5(&vc4->job_lock);
		status = IRQ_HANDLED;
	}

	return status;
}
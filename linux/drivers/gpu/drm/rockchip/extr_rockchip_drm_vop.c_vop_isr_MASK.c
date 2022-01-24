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
struct drm_crtc {int dummy; } ;
struct vop {int /*<<< orphan*/  dev; int /*<<< orphan*/  line_flag_completion; int /*<<< orphan*/  dsp_hold_completion; int /*<<< orphan*/  irq_lock; struct drm_crtc crtc; } ;
typedef  int irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int DSP_HOLD_VALID_INTR ; 
 int FS_INTR ; 
 int /*<<< orphan*/  INTR_MASK ; 
 int IRQ_HANDLED ; 
 int IRQ_NONE ; 
 int LINE_FLAG_INTR ; 
 int FUNC2 (struct vop*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vop*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  clear ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  status ; 
 int /*<<< orphan*/  FUNC10 (struct vop*) ; 
 scalar_t__ FUNC11 (struct vop*) ; 
 int /*<<< orphan*/  FUNC12 (struct vop*) ; 

__attribute__((used)) static irqreturn_t FUNC13(int irq, void *data)
{
	struct vop *vop = data;
	struct drm_crtc *crtc = &vop->crtc;
	uint32_t active_irqs;
	int ret = IRQ_NONE;

	/*
	 * The irq is shared with the iommu. If the runtime-pm state of the
	 * vop-device is disabled the irq has to be targeted at the iommu.
	 */
	if (!FUNC6(vop->dev))
		return IRQ_NONE;

	if (FUNC11(vop)) {
		FUNC1(vop->dev, "couldn't enable clocks\n");
		goto out;
	}

	/*
	 * interrupt register has interrupt status, enable and clear bits, we
	 * must hold irq_lock to avoid a race with enable/disable_vblank().
	*/
	FUNC8(&vop->irq_lock);

	active_irqs = FUNC2(vop, status, INTR_MASK);
	/* Clear all active interrupt sources */
	if (active_irqs)
		FUNC3(vop, clear, active_irqs, 1);

	FUNC9(&vop->irq_lock);

	/* This is expected for vop iommu irqs, since the irq is shared */
	if (!active_irqs)
		goto out_disable;

	if (active_irqs & DSP_HOLD_VALID_INTR) {
		FUNC4(&vop->dsp_hold_completion);
		active_irqs &= ~DSP_HOLD_VALID_INTR;
		ret = IRQ_HANDLED;
	}

	if (active_irqs & LINE_FLAG_INTR) {
		FUNC4(&vop->line_flag_completion);
		active_irqs &= ~LINE_FLAG_INTR;
		ret = IRQ_HANDLED;
	}

	if (active_irqs & FS_INTR) {
		FUNC5(crtc);
		FUNC12(vop);
		active_irqs &= ~FS_INTR;
		ret = IRQ_HANDLED;
	}

	/* Unhandled irqs are spurious. */
	if (active_irqs)
		FUNC0(vop->dev, "Unknown VOP IRQs: %#02x\n",
			      active_irqs);

out_disable:
	FUNC10(vop);
out:
	FUNC7(vop->dev);
	return ret;
}
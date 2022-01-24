#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct rcar_du_device {TYPE_1__* info; } ;
struct rcar_du_crtc {scalar_t__ vblank_count; int /*<<< orphan*/  crtc; int /*<<< orphan*/  vblank_lock; int /*<<< orphan*/  vblank_wait; struct rcar_du_device* dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int gen; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSRCR ; 
 int DSRCR_MASK ; 
 int /*<<< orphan*/  DSSR ; 
 int DSSR_VBK ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rcar_du_crtc*) ; 
 int FUNC2 (struct rcar_du_crtc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rcar_du_crtc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *arg)
{
	struct rcar_du_crtc *rcrtc = arg;
	struct rcar_du_device *rcdu = rcrtc->dev;
	irqreturn_t ret = IRQ_NONE;
	u32 status;

	FUNC4(&rcrtc->vblank_lock);

	status = FUNC2(rcrtc, DSSR);
	FUNC3(rcrtc, DSRCR, status & DSRCR_MASK);

	if (status & DSSR_VBK) {
		/*
		 * Wake up the vblank wait if the counter reaches 0. This must
		 * be protected by the vblank_lock to avoid races in
		 * rcar_du_crtc_disable_planes().
		 */
		if (rcrtc->vblank_count) {
			if (--rcrtc->vblank_count == 0)
				FUNC6(&rcrtc->vblank_wait);
		}
	}

	FUNC5(&rcrtc->vblank_lock);

	if (status & DSSR_VBK) {
		if (rcdu->info->gen < 3) {
			FUNC0(&rcrtc->crtc);
			FUNC1(rcrtc);
		}

		ret = IRQ_HANDLED;
	}

	return ret;
}
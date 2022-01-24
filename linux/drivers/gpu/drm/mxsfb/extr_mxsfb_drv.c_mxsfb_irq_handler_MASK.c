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
struct TYPE_2__ {int /*<<< orphan*/  crtc; } ;
struct mxsfb_drm_private {scalar_t__ base; TYPE_1__ pipe; } ;
struct drm_device {struct mxsfb_drm_private* dev_private; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int CTRL1_CUR_FRAME_DONE_IRQ ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ LCDC_CTRL1 ; 
 scalar_t__ REG_CLR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mxsfb_drm_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct mxsfb_drm_private*) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *data)
{
	struct drm_device *drm = data;
	struct mxsfb_drm_private *mxsfb = drm->dev_private;
	u32 reg;

	FUNC2(mxsfb);

	reg = FUNC3(mxsfb->base + LCDC_CTRL1);

	if (reg & CTRL1_CUR_FRAME_DONE_IRQ)
		FUNC0(&mxsfb->pipe.crtc);

	FUNC4(CTRL1_CUR_FRAME_DONE_IRQ, mxsfb->base + LCDC_CTRL1 + REG_CLR);

	FUNC1(mxsfb);

	return IRQ_HANDLED;
}
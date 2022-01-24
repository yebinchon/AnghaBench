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
struct mxsfb_drm_private {scalar_t__ base; } ;
struct drm_simple_display_pipe {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL1_CUR_FRAME_DONE_IRQ ; 
 int /*<<< orphan*/  CTRL1_CUR_FRAME_DONE_IRQ_EN ; 
 scalar_t__ LCDC_CTRL1 ; 
 scalar_t__ REG_CLR ; 
 struct mxsfb_drm_private* FUNC0 (struct drm_simple_display_pipe*) ; 
 int /*<<< orphan*/  FUNC1 (struct mxsfb_drm_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct mxsfb_drm_private*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct drm_simple_display_pipe *pipe)
{
	struct mxsfb_drm_private *mxsfb = FUNC0(pipe);

	/* Disable and clear VBLANK IRQ */
	FUNC2(mxsfb);
	FUNC3(CTRL1_CUR_FRAME_DONE_IRQ_EN, mxsfb->base + LCDC_CTRL1 + REG_CLR);
	FUNC3(CTRL1_CUR_FRAME_DONE_IRQ, mxsfb->base + LCDC_CTRL1 + REG_CLR);
	FUNC1(mxsfb);
}
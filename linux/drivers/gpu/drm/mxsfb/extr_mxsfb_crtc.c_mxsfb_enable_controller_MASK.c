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
typedef  int /*<<< orphan*/  u32 ;
struct mxsfb_drm_private {scalar_t__ base; scalar_t__ clk; scalar_t__ clk_disp_axi; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL_DOTCLK_MODE ; 
 int /*<<< orphan*/  CTRL_RUN ; 
 scalar_t__ LCDC_CTRL ; 
 scalar_t__ LCDC_VDCTRL4 ; 
 scalar_t__ REG_SET ; 
 int /*<<< orphan*/  VDCTRL4_SYNC_SIGNALS_ON ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct mxsfb_drm_private *mxsfb)
{
	u32 reg;

	if (mxsfb->clk_disp_axi)
		FUNC0(mxsfb->clk_disp_axi);
	FUNC0(mxsfb->clk);

	/* If it was disabled, re-enable the mode again */
	FUNC2(CTRL_DOTCLK_MODE, mxsfb->base + LCDC_CTRL + REG_SET);

	/* Enable the SYNC signals first, then the DMA engine */
	reg = FUNC1(mxsfb->base + LCDC_VDCTRL4);
	reg |= VDCTRL4_SYNC_SIGNALS_ON;
	FUNC2(reg, mxsfb->base + LCDC_VDCTRL4);

	FUNC2(CTRL_RUN, mxsfb->base + LCDC_CTRL + REG_SET);
}
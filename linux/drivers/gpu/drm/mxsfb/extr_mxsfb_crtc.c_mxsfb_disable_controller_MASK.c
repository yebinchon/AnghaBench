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
typedef  int u32 ;
struct mxsfb_drm_private {scalar_t__ clk_disp_axi; scalar_t__ clk; scalar_t__ base; } ;

/* Variables and functions */
 int CTRL_DOTCLK_MODE ; 
 int CTRL_RUN ; 
 scalar_t__ LCDC_CTRL ; 
 scalar_t__ LCDC_VDCTRL4 ; 
 scalar_t__ REG_CLR ; 
 int VDCTRL4_SYNC_SIGNALS_ON ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct mxsfb_drm_private *mxsfb)
{
	u32 reg;

	/*
	 * Even if we disable the controller here, it will still continue
	 * until its FIFOs are running out of data
	 */
	FUNC3(CTRL_DOTCLK_MODE, mxsfb->base + LCDC_CTRL + REG_CLR);

	FUNC2(mxsfb->base + LCDC_CTRL, reg, !(reg & CTRL_RUN),
			   0, 1000);

	reg = FUNC1(mxsfb->base + LCDC_VDCTRL4);
	reg &= ~VDCTRL4_SYNC_SIGNALS_ON;
	FUNC3(reg, mxsfb->base + LCDC_VDCTRL4);

	FUNC0(mxsfb->clk);
	if (mxsfb->clk_disp_axi)
		FUNC0(mxsfb->clk_disp_axi);
}
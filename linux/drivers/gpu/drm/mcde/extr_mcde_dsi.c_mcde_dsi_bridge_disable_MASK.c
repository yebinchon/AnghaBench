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
typedef  int /*<<< orphan*/  u32 ;
struct mcde_dsi {int /*<<< orphan*/  lp_clk; int /*<<< orphan*/  hs_clk; scalar_t__ regs; TYPE_1__* mdsi; } ;
struct drm_bridge {int dummy; } ;
struct TYPE_2__ {int mode_flags; } ;

/* Variables and functions */
 scalar_t__ DSI_MCTL_MAIN_DATA_CTL ; 
 int /*<<< orphan*/  DSI_MCTL_MAIN_DATA_CTL_VID_EN ; 
 scalar_t__ DSI_VID_MODE_STS_CTL ; 
 int MIPI_DSI_MODE_VIDEO ; 
 struct mcde_dsi* FUNC0 (struct drm_bridge*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mcde_dsi*) ; 
 int /*<<< orphan*/  FUNC3 (struct mcde_dsi*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct drm_bridge *bridge)
{
	struct mcde_dsi *d = FUNC0(bridge);
	u32 val;

	/* Disable all error interrupts */
	FUNC5(0, d->regs + DSI_VID_MODE_STS_CTL);

	if (d->mdsi->mode_flags & MIPI_DSI_MODE_VIDEO) {
		/* Stop video mode */
		val = FUNC4(d->regs + DSI_MCTL_MAIN_DATA_CTL);
		val &= ~DSI_MCTL_MAIN_DATA_CTL_VID_EN;
		FUNC5(val, d->regs + DSI_MCTL_MAIN_DATA_CTL);
		FUNC3(d);
	} else {
		/* Stop command mode */
		FUNC2(d);
	}

	/* Stop clocks */
	FUNC1(d->hs_clk);
	FUNC1(d->lp_clk);
}
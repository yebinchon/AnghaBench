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
struct TYPE_10__ {int bus_flags; } ;
struct TYPE_11__ {TYPE_4__ display_info; } ;
struct TYPE_8__ {TYPE_1__* state; } ;
struct TYPE_9__ {TYPE_2__ crtc; } ;
struct mxsfb_drm_private {scalar_t__ base; TYPE_6__* devdata; int /*<<< orphan*/  clk; TYPE_5__ connector; TYPE_3__ pipe; } ;
struct drm_display_mode {int crtc_clock; int crtc_vsync_end; int crtc_vsync_start; int flags; int crtc_vtotal; int crtc_hsync_end; int crtc_hsync_start; int crtc_htotal; int /*<<< orphan*/  hdisplay; int /*<<< orphan*/  crtc_hdisplay; int /*<<< orphan*/  crtc_vdisplay; } ;
struct TYPE_12__ {scalar_t__ transfer_count; } ;
struct TYPE_7__ {struct drm_display_mode adjusted_mode; } ;

/* Variables and functions */
 int CTRL1_FIFO_CLEAR ; 
 int const DRM_BUS_FLAG_DE_LOW ; 
 int const DRM_BUS_FLAG_PIXDATA_DRIVE_POSEDGE ; 
 int DRM_MODE_FLAG_PHSYNC ; 
 int DRM_MODE_FLAG_PVSYNC ; 
 scalar_t__ LCDC_CTRL1 ; 
 scalar_t__ LCDC_VDCTRL0 ; 
 scalar_t__ LCDC_VDCTRL1 ; 
 scalar_t__ LCDC_VDCTRL2 ; 
 scalar_t__ LCDC_VDCTRL3 ; 
 scalar_t__ LCDC_VDCTRL4 ; 
 scalar_t__ REG_SET ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int VDCTRL0_DOTCLK_ACT_FALLING ; 
 int VDCTRL0_ENABLE_ACT_HIGH ; 
 int VDCTRL0_ENABLE_PRESENT ; 
 int VDCTRL0_HSYNC_ACT_HIGH ; 
 int FUNC5 (int) ; 
 int VDCTRL0_VSYNC_ACT_HIGH ; 
 int VDCTRL0_VSYNC_PERIOD_UNIT ; 
 int VDCTRL0_VSYNC_PULSE_WIDTH_UNIT ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct mxsfb_drm_private*) ; 
 int FUNC10 (struct mxsfb_drm_private*) ; 
 int FUNC11 (struct mxsfb_drm_private*,int) ; 
 int /*<<< orphan*/  FUNC12 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC13(struct mxsfb_drm_private *mxsfb)
{
	struct drm_display_mode *m = &mxsfb->pipe.crtc.state->adjusted_mode;
	const u32 bus_flags = mxsfb->connector.display_info.bus_flags;
	u32 vdctrl0, vsync_pulse_len, hsync_pulse_len;
	int err;

	/*
	 * It seems, you can't re-program the controller if it is still
	 * running. This may lead to shifted pictures (FIFO issue?), so
	 * first stop the controller and drain its FIFOs.
	 */

	/* Mandatory eLCDIF reset as per the Reference Manual */
	err = FUNC8(mxsfb->base);
	if (err)
		return;

	/* Clear the FIFOs */
	FUNC12(CTRL1_FIFO_CLEAR, mxsfb->base + LCDC_CTRL1 + REG_SET);

	err = FUNC10(mxsfb);
	if (err)
		return;

	FUNC7(mxsfb->clk, m->crtc_clock * 1000);

	FUNC12(FUNC4(m->crtc_vdisplay) |
	       FUNC3(m->crtc_hdisplay),
	       mxsfb->base + mxsfb->devdata->transfer_count);

	vsync_pulse_len = m->crtc_vsync_end - m->crtc_vsync_start;

	vdctrl0 = VDCTRL0_ENABLE_PRESENT |	/* Always in DOTCLOCK mode */
		  VDCTRL0_VSYNC_PERIOD_UNIT |
		  VDCTRL0_VSYNC_PULSE_WIDTH_UNIT |
		  FUNC5(vsync_pulse_len);
	if (m->flags & DRM_MODE_FLAG_PHSYNC)
		vdctrl0 |= VDCTRL0_HSYNC_ACT_HIGH;
	if (m->flags & DRM_MODE_FLAG_PVSYNC)
		vdctrl0 |= VDCTRL0_VSYNC_ACT_HIGH;
	/* Make sure Data Enable is high active by default */
	if (!(bus_flags & DRM_BUS_FLAG_DE_LOW))
		vdctrl0 |= VDCTRL0_ENABLE_ACT_HIGH;
	/*
	 * DRM_BUS_FLAG_PIXDATA_DRIVE_ defines are controller centric,
	 * controllers VDCTRL0_DOTCLK is display centric.
	 * Drive on positive edge       -> display samples on falling edge
	 * DRM_BUS_FLAG_PIXDATA_DRIVE_POSEDGE -> VDCTRL0_DOTCLK_ACT_FALLING
	 */
	if (bus_flags & DRM_BUS_FLAG_PIXDATA_DRIVE_POSEDGE)
		vdctrl0 |= VDCTRL0_DOTCLK_ACT_FALLING;

	FUNC12(vdctrl0, mxsfb->base + LCDC_VDCTRL0);

	FUNC9(mxsfb);

	/* Frame length in lines. */
	FUNC12(m->crtc_vtotal, mxsfb->base + LCDC_VDCTRL1);

	/* Line length in units of clocks or pixels. */
	hsync_pulse_len = m->crtc_hsync_end - m->crtc_hsync_start;
	FUNC12(FUNC11(mxsfb, hsync_pulse_len) |
	       FUNC6(m->crtc_htotal),
	       mxsfb->base + LCDC_VDCTRL2);

	FUNC12(FUNC1(m->crtc_htotal - m->crtc_hsync_start) |
	       FUNC2(m->crtc_vtotal - m->crtc_vsync_start),
	       mxsfb->base + LCDC_VDCTRL3);

	FUNC12(FUNC0(m->hdisplay),
	       mxsfb->base + LCDC_VDCTRL4);
}
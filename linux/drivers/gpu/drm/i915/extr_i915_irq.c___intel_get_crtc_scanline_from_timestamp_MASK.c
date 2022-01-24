#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct intel_crtc {int /*<<< orphan*/  pipe; TYPE_2__ base; } ;
struct drm_display_mode {scalar_t__ crtc_vblank_start; scalar_t__ crtc_vtotal; scalar_t__ crtc_htotal; scalar_t__ crtc_clock; } ;
struct drm_vblank_crtc {struct drm_display_mode hwmode; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_3__ {struct drm_vblank_crtc* vblank; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IVB_TIMESTAMP_CTR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 size_t FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__) ; 
 struct drm_i915_private* FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static u32 FUNC7(struct intel_crtc *crtc)
{
	struct drm_i915_private *dev_priv = FUNC6(crtc->base.dev);
	struct drm_vblank_crtc *vblank =
		&crtc->base.dev->vblank[FUNC3(&crtc->base)];
	const struct drm_display_mode *mode = &vblank->hwmode;
	u32 vblank_start = mode->crtc_vblank_start;
	u32 vtotal = mode->crtc_vtotal;
	u32 htotal = mode->crtc_htotal;
	u32 clock = mode->crtc_clock;
	u32 scanline, scan_prev_time, scan_curr_time, scan_post_time;

	/*
	 * To avoid the race condition where we might cross into the
	 * next vblank just between the PIPE_FRMTMSTMP and TIMESTAMP_CTR
	 * reads. We make sure we read PIPE_FRMTMSTMP and TIMESTAMP_CTR
	 * during the same frame.
	 */
	do {
		/*
		 * This field provides read back of the display
		 * pipe frame time stamp. The time stamp value
		 * is sampled at every start of vertical blank.
		 */
		scan_prev_time = FUNC0(FUNC1(crtc->pipe));

		/*
		 * The TIMESTAMP_CTR register has the current
		 * time stamp value.
		 */
		scan_curr_time = FUNC0(IVB_TIMESTAMP_CTR);

		scan_post_time = FUNC0(FUNC1(crtc->pipe));
	} while (scan_post_time != scan_prev_time);

	scanline = FUNC2(FUNC5(scan_curr_time - scan_prev_time,
					clock), 1000 * htotal);
	scanline = FUNC4(scanline, vtotal - 1);
	scanline = (scanline + vblank_start) % vtotal;

	return scanline;
}
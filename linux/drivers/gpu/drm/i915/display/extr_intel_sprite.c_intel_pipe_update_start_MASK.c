#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wait_queue_head_t ;
typedef  int /*<<< orphan*/  u32 ;
struct drm_display_mode {int crtc_vblank_start; int flags; } ;
struct TYPE_6__ {struct drm_display_mode adjusted_mode; int /*<<< orphan*/  crtc; } ;
struct intel_crtc_state {TYPE_1__ base; } ;
struct TYPE_7__ {int min_vbl; int max_vbl; int scanline_start; int /*<<< orphan*/  start_vbl_count; int /*<<< orphan*/  start_vbl_time; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;
struct intel_crtc {TYPE_2__ debug; TYPE_3__ base; int /*<<< orphan*/  pipe; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int DRM_MODE_FLAG_INTERLACE ; 
 int /*<<< orphan*/  INTEL_OUTPUT_DSI ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  VBLANK_EVASION_TIME_US ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct intel_crtc*) ; 
 scalar_t__ FUNC11 (struct intel_crtc_state const*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct intel_crtc*) ; 
 scalar_t__ FUNC13 (struct intel_crtc_state const*,int /*<<< orphan*/ *) ; 
 int FUNC14 (struct drm_display_mode const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 long FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 long FUNC21 (long) ; 
 struct drm_i915_private* FUNC22 (int /*<<< orphan*/ ) ; 
 struct intel_crtc* FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct intel_crtc*) ; 
 int /*<<< orphan*/  FUNC25 (struct intel_crtc*) ; 
 int /*<<< orphan*/  wait ; 

void FUNC26(const struct intel_crtc_state *new_crtc_state)
{
	struct intel_crtc *crtc = FUNC23(new_crtc_state->base.crtc);
	struct drm_i915_private *dev_priv = FUNC22(crtc->base.dev);
	const struct drm_display_mode *adjusted_mode = &new_crtc_state->base.adjusted_mode;
	long timeout = FUNC18(1);
	int scanline, min, max, vblank_start;
	wait_queue_head_t *wq = FUNC8(&crtc->base);
	bool need_vlv_dsi_wa = (FUNC4(dev_priv) || FUNC3(dev_priv)) &&
		FUNC11(new_crtc_state, INTEL_OUTPUT_DSI);
	FUNC0(wait);
	u32 psr_status;

	vblank_start = adjusted_mode->crtc_vblank_start;
	if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
		vblank_start = FUNC1(vblank_start, 2);

	/* FIXME needs to be calibrated sensibly */
	min = vblank_start - FUNC14(adjusted_mode,
						      VBLANK_EVASION_TIME_US);
	max = vblank_start - 1;

	if (min <= 0 || max <= 0)
		goto irq_disable;

	if (FUNC5(FUNC6(&crtc->base)))
		goto irq_disable;

	/*
	 * Wait for psr to idle out after enabling the VBL interrupts
	 * VBL interrupts will start the PSR exit and prevent a PSR
	 * re-entry as well.
	 */
	if (FUNC13(new_crtc_state, &psr_status))
		FUNC2("PSR idle timed out 0x%x, atomic update may fail\n",
			  psr_status);

	FUNC16();

	crtc->debug.min_vbl = min;
	crtc->debug.max_vbl = max;
	FUNC24(crtc);

	for (;;) {
		/*
		 * prepare_to_wait() has a memory barrier, which guarantees
		 * other CPUs can see the task state update by the time we
		 * read the scanline.
		 */
		FUNC20(wq, &wait, TASK_UNINTERRUPTIBLE);

		scanline = FUNC12(crtc);
		if (scanline < min || scanline > max)
			break;

		if (!timeout) {
			FUNC2("Potential atomic update failure on pipe %c\n",
				  FUNC19(crtc->pipe));
			break;
		}

		FUNC17();

		timeout = FUNC21(timeout);

		FUNC16();
	}

	FUNC9(wq, &wait);

	FUNC7(&crtc->base);

	/*
	 * On VLV/CHV DSI the scanline counter would appear to
	 * increment approx. 1/3 of a scanline before start of vblank.
	 * The registers still get latched at start of vblank however.
	 * This means we must not write any registers on the first
	 * line of vblank (since not the whole line is actually in
	 * vblank). And unfortunately we can't use the interrupt to
	 * wait here since it will fire too soon. We could use the
	 * frame start interrupt instead since it will fire after the
	 * critical scanline, but that would require more changes
	 * in the interrupt code. So for now we'll just do the nasty
	 * thing and poll for the bad scanline to pass us by.
	 *
	 * FIXME figure out if BXT+ DSI suffers from this as well
	 */
	while (need_vlv_dsi_wa && scanline == vblank_start)
		scanline = FUNC12(crtc);

	crtc->debug.scanline_start = scanline;
	crtc->debug.start_vbl_time = FUNC15();
	crtc->debug.start_vbl_count = FUNC10(crtc);

	FUNC25(crtc);
	return;

irq_disable:
	FUNC16();
}
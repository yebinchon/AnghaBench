#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_6__ {int /*<<< orphan*/ * event; int /*<<< orphan*/  crtc; } ;
struct intel_crtc_state {TYPE_1__ base; } ;
struct TYPE_7__ {scalar_t__ start_vbl_count; int /*<<< orphan*/  start_vbl_time; int /*<<< orphan*/  scanline_start; int /*<<< orphan*/  max_vbl; int /*<<< orphan*/  min_vbl; } ;
struct TYPE_9__ {TYPE_3__* dev; } ;
struct intel_crtc {int pipe; TYPE_2__ debug; TYPE_4__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef  int /*<<< orphan*/  ktime_t ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;
struct TYPE_8__ {int /*<<< orphan*/  event_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ VBLANK_EVASION_TIME_US ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_4__*) ; 
 scalar_t__ FUNC5 (struct intel_crtc*) ; 
 int FUNC6 (struct intel_crtc*) ; 
 scalar_t__ FUNC7 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 struct drm_i915_private* FUNC14 (TYPE_3__*) ; 
 struct intel_crtc* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct intel_crtc*,scalar_t__,int) ; 

void FUNC17(struct intel_crtc_state *new_crtc_state)
{
	struct intel_crtc *crtc = FUNC15(new_crtc_state->base.crtc);
	enum pipe pipe = crtc->pipe;
	int scanline_end = FUNC6(crtc);
	u32 end_vbl_count = FUNC5(crtc);
	ktime_t end_vbl_time = FUNC8();
	struct drm_i915_private *dev_priv = FUNC14(crtc->base.dev);

	FUNC16(crtc, end_vbl_count, scanline_end);

	/* We're still in the vblank-evade critical section, this can't race.
	 * Would be slightly nice to just grab the vblank count and arm the
	 * event outside of the critical section - the spinlock might spin for a
	 * while ... */
	if (new_crtc_state->base.event) {
		FUNC2(FUNC4(&crtc->base) != 0);

		FUNC12(&crtc->base.dev->event_lock);
		FUNC3(&crtc->base, new_crtc_state->base.event);
		FUNC13(&crtc->base.dev->event_lock);

		new_crtc_state->base.event = NULL;
	}

	FUNC10();

	if (FUNC7(dev_priv))
		return;

	if (crtc->debug.start_vbl_count &&
	    crtc->debug.start_vbl_count != end_vbl_count) {
		FUNC0("Atomic update failure on pipe %c (start=%u end=%u) time %lld us, min %d, max %d, scanline start %d, end %d\n",
			  FUNC11(pipe), crtc->debug.start_vbl_count,
			  end_vbl_count,
			  FUNC9(end_vbl_time, crtc->debug.start_vbl_time),
			  crtc->debug.min_vbl, crtc->debug.max_vbl,
			  crtc->debug.scanline_start, scanline_end);
	}
#ifdef CONFIG_DRM_I915_DEBUG_VBLANK_EVADE
	else if (ktime_us_delta(end_vbl_time, crtc->debug.start_vbl_time) >
		 VBLANK_EVASION_TIME_US)
		DRM_WARN("Atomic update on pipe (%c) took %lld us, max time under evasion is %u us\n",
			 pipe_name(pipe),
			 ktime_us_delta(end_vbl_time, crtc->debug.start_vbl_time),
			 VBLANK_EVASION_TIME_US);
#endif
}
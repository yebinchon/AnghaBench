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
struct intel_crtc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct drm_i915_private {TYPE_1__ uncore; } ;
struct drm_display_mode {int private_flags; int crtc_htotal; int crtc_hsync_start; int crtc_vtotal; int crtc_vblank_start; int crtc_vblank_end; int flags; int /*<<< orphan*/  crtc_clock; } ;
struct drm_device {int dummy; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int DRM_MODE_FLAG_INTERLACE ; 
 int I915_MODE_FLAG_USE_SCANLINE_COUNTER ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct drm_i915_private*) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 scalar_t__ FUNC5 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 int PIPE_PIXEL_MASK ; 
 int PIPE_PIXEL_SHIFT ; 
 scalar_t__ FUNC7 (int) ; 
 int FUNC8 (struct intel_crtc*) ; 
 struct intel_crtc* FUNC9 (struct drm_i915_private*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 struct drm_i915_private* FUNC14 (struct drm_device*) ; 

bool FUNC15(struct drm_device *dev, unsigned int pipe,
			      bool in_vblank_irq, int *vpos, int *hpos,
			      ktime_t *stime, ktime_t *etime,
			      const struct drm_display_mode *mode)
{
	struct drm_i915_private *dev_priv = FUNC14(dev);
	struct intel_crtc *intel_crtc = FUNC9(dev_priv,
								pipe);
	int position;
	int vbl_start, vbl_end, hsync_start, htotal, vtotal;
	unsigned long irqflags;
	bool use_scanline_counter = FUNC3(dev_priv) >= 5 ||
		FUNC4(dev_priv) || FUNC5(dev_priv, 2) ||
		mode->private_flags & I915_MODE_FLAG_USE_SCANLINE_COUNTER;

	if (FUNC7(!mode->crtc_clock)) {
		FUNC1("trying to get scanoutpos for disabled "
				 "pipe %c\n", FUNC11(pipe));
		return false;
	}

	htotal = mode->crtc_htotal;
	hsync_start = mode->crtc_hsync_start;
	vtotal = mode->crtc_vtotal;
	vbl_start = mode->crtc_vblank_start;
	vbl_end = mode->crtc_vblank_end;

	if (mode->flags & DRM_MODE_FLAG_INTERLACE) {
		vbl_start = FUNC0(vbl_start, 2);
		vbl_end /= 2;
		vtotal /= 2;
	}

	/*
	 * Lock uncore.lock, as we will do multiple timing critical raw
	 * register reads, potentially with preemption disabled, so the
	 * following code must not block on uncore.lock.
	 */
	FUNC12(&dev_priv->uncore.lock, irqflags);

	/* preempt_disable_rt() should go right here in PREEMPT_RT patchset. */

	/* Get optional system timestamp before query. */
	if (stime)
		*stime = FUNC10();

	if (use_scanline_counter) {
		/* No obvious pixelcount register. Only query vertical
		 * scanout position from Display scan line register.
		 */
		position = FUNC8(intel_crtc);
	} else {
		/* Have access to pixelcount since start of frame.
		 * We can split this into vertical and horizontal
		 * scanout position.
		 */
		position = (FUNC2(FUNC6(pipe)) & PIPE_PIXEL_MASK) >> PIPE_PIXEL_SHIFT;

		/* convert to pixel counts */
		vbl_start *= htotal;
		vbl_end *= htotal;
		vtotal *= htotal;

		/*
		 * In interlaced modes, the pixel counter counts all pixels,
		 * so one field will have htotal more pixels. In order to avoid
		 * the reported position from jumping backwards when the pixel
		 * counter is beyond the length of the shorter field, just
		 * clamp the position the length of the shorter field. This
		 * matches how the scanline counter based position works since
		 * the scanline counter doesn't count the two half lines.
		 */
		if (position >= vtotal)
			position = vtotal - 1;

		/*
		 * Start of vblank interrupt is triggered at start of hsync,
		 * just prior to the first active line of vblank. However we
		 * consider lines to start at the leading edge of horizontal
		 * active. So, should we get here before we've crossed into
		 * the horizontal active of the first line in vblank, we would
		 * not set the DRM_SCANOUTPOS_INVBL flag. In order to fix that,
		 * always add htotal-hsync_start to the current pixel position.
		 */
		position = (position + htotal - hsync_start) % vtotal;
	}

	/* Get optional system timestamp after query. */
	if (etime)
		*etime = FUNC10();

	/* preempt_enable_rt() should go right here in PREEMPT_RT patchset. */

	FUNC13(&dev_priv->uncore.lock, irqflags);

	/*
	 * While in vblank, position will be negative
	 * counting up towards 0 at vbl_end. And outside
	 * vblank, position will be positive counting
	 * up since vbl_end.
	 */
	if (position >= vbl_start)
		position -= vbl_end;
	else
		position += vtotal - vbl_end;

	if (use_scanline_counter) {
		*vpos = position;
		*hpos = 0;
	} else {
		*vpos = position / htotal;
		*hpos = position - (*vpos * htotal);
	}

	return true;
}
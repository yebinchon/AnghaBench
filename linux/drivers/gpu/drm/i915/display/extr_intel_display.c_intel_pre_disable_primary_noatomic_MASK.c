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
struct intel_crtc {int pipe; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_crtc {int /*<<< orphan*/  state; struct drm_device* dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*,int,int) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*,int) ; 
 struct drm_i915_private* FUNC6 (struct drm_device*) ; 
 struct intel_crtc* FUNC7 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(struct drm_crtc *crtc)
{
	struct drm_device *dev = crtc->dev;
	struct drm_i915_private *dev_priv = FUNC6(dev);
	struct intel_crtc *intel_crtc = FUNC7(crtc);
	int pipe = intel_crtc->pipe;

	/*
	 * Gen2 reports pipe underruns whenever all planes are disabled.
	 * So disable underrun reporting before all the planes get disabled.
	 */
	if (FUNC1(dev_priv, 2))
		FUNC3(dev_priv, pipe, false);

	FUNC2(FUNC8(crtc->state));

	/*
	 * Vblank time updates from the shadow to live plane control register
	 * are blocked if the memory self-refresh mode is active at that
	 * moment. So to make sure the plane gets truly disabled, disable
	 * first the self-refresh mode. The self-refresh enable bit in turn
	 * will be checked/applied by the HW only at the next frame start
	 * event which is after the vblank start event, so we need to have a
	 * wait-for-vblank between disabling the plane and the pipe.
	 */
	if (FUNC0(dev_priv) &&
	    FUNC4(dev_priv, false))
		FUNC5(dev_priv, pipe);
}
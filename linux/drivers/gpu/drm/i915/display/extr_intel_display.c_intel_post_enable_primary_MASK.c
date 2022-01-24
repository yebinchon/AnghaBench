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
struct intel_crtc_state {int dummy; } ;
struct intel_crtc {int pipe; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_crtc {struct drm_device* dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*,int,int) ; 
 struct drm_i915_private* FUNC4 (struct drm_device*) ; 
 struct intel_crtc* FUNC5 (struct drm_crtc*) ; 

__attribute__((used)) static void
FUNC6(struct drm_crtc *crtc,
			  const struct intel_crtc_state *new_crtc_state)
{
	struct drm_device *dev = crtc->dev;
	struct drm_i915_private *dev_priv = FUNC4(dev);
	struct intel_crtc *intel_crtc = FUNC5(crtc);
	int pipe = intel_crtc->pipe;

	/*
	 * Gen2 reports pipe underruns whenever all planes are disabled.
	 * So don't enable underrun reporting before at least some planes
	 * are enabled.
	 * FIXME: Need to fix the logic to work when we turn off all planes
	 * but leave the pipe running.
	 */
	if (FUNC0(dev_priv, 2))
		FUNC3(dev_priv, pipe, true);

	/* Underruns don't always raise interrupts, so check manually. */
	FUNC1(dev_priv);
	FUNC2(dev_priv);
}
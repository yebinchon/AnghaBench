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
struct TYPE_4__ {TYPE_1__* crtc; } ;
struct intel_crtc_state {scalar_t__ limited_color_range; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*,int,int) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 struct drm_i915_private* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(const struct intel_crtc_state *crtc_state)
{
	struct drm_i915_private *dev_priv = FUNC3(crtc_state->base.crtc->dev);

	/*
	 * FIXME if there's a gamma LUT after the CSC, we should
	 * do the range compression using the gamma LUT instead.
	 */
	return crtc_state->limited_color_range &&
		(FUNC2(dev_priv) || FUNC0(dev_priv) ||
		 FUNC1(dev_priv, 9, 10));
}
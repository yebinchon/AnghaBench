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
struct intel_crtc_state {int /*<<< orphan*/  nv12_planes; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*,int) ; 

__attribute__((used)) static bool FUNC2(struct drm_i915_private *dev_priv,
			  const struct intel_crtc_state *crtc_state)
{
	if (!crtc_state->nv12_planes)
		return false;

	/* WA Display #0827: Gen9:all */
	if (FUNC1(dev_priv, 9) && !FUNC0(dev_priv))
		return true;

	return false;
}
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
struct intel_cdclk_state {scalar_t__ cdclk; scalar_t__ vco; scalar_t__ ref; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*) ; 

bool FUNC2(struct drm_i915_private *dev_priv,
				   const struct intel_cdclk_state *a,
				   const struct intel_cdclk_state *b)
{
	/* Older hw doesn't have the capability */
	if (FUNC0(dev_priv) < 10 && !FUNC1(dev_priv))
		return false;

	return a->cdclk != b->cdclk &&
		a->vco == b->vco &&
		a->ref == b->ref;
}
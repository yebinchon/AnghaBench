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
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 () ; 

__attribute__((used)) static bool FUNC4(struct drm_i915_private *dev_priv)
{
	/* WaFbcTurnOffFbcWhenHyperVisorIsUsed:skl,bxt */
	if (FUNC3() &&
	    (FUNC2(dev_priv) || FUNC1(dev_priv))) {
		FUNC0("Disabling framebuffer compression (FBC) to prevent screen flicker with VT-d enabled\n");
		return true;
	}

	return false;
}
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
 int /*<<< orphan*/  CONFIG_INTEL_MEI_HDCP ; 
 int FUNC0 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 

__attribute__((used)) static bool FUNC4(struct drm_i915_private *dev_priv)
{
	if (!FUNC1(CONFIG_INTEL_MEI_HDCP))
		return false;

	return (FUNC0(dev_priv) >= 10 || FUNC2(dev_priv) ||
		FUNC3(dev_priv));
}
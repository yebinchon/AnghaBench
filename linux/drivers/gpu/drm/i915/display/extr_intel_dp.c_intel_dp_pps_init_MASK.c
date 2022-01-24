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
struct intel_dp {int dummy; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 struct drm_i915_private* FUNC2 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_dp*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_dp*) ; 

__attribute__((used)) static void FUNC6(struct intel_dp *intel_dp)
{
	struct drm_i915_private *dev_priv = FUNC2(intel_dp);

	if (FUNC1(dev_priv) || FUNC0(dev_priv)) {
		FUNC5(intel_dp);
	} else {
		FUNC3(intel_dp);
		FUNC4(intel_dp, false);
	}
}
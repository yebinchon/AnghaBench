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
struct intel_dp {scalar_t__ pps_pipe; } ;
struct drm_i915_private {int /*<<< orphan*/  pps_mutex; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ INVALID_PIPE ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 int PP_ON ; 
 int /*<<< orphan*/  FUNC3 (struct intel_dp*) ; 
 struct drm_i915_private* FUNC4 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC6(struct intel_dp *intel_dp)
{
	struct drm_i915_private *dev_priv = FUNC4(intel_dp);

	FUNC5(&dev_priv->pps_mutex);

	if ((FUNC2(dev_priv) || FUNC1(dev_priv)) &&
	    intel_dp->pps_pipe == INVALID_PIPE)
		return false;

	return (FUNC0(FUNC3(intel_dp)) & PP_ON) != 0;
}
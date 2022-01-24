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
struct drm_i915_private {int /*<<< orphan*/  pps_mutex; } ;
typedef  int /*<<< orphan*/  intel_wakeref_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct intel_dp*) ; 
 struct drm_i915_private* FUNC1 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static intel_wakeref_t
FUNC5(struct intel_dp *intel_dp, intel_wakeref_t wakeref)
{
	struct drm_i915_private *dev_priv = FUNC1(intel_dp);

	FUNC4(&dev_priv->pps_mutex);
	FUNC3(dev_priv,
				FUNC2(FUNC0(intel_dp)),
				wakeref);
	return 0;
}
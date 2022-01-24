#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct intel_dp {int dummy; } ;
struct intel_crtc_state {int /*<<< orphan*/  has_psr; } ;
struct TYPE_2__ {int /*<<< orphan*/  work; int /*<<< orphan*/  lock; } ;
struct drm_i915_private {TYPE_1__ psr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct drm_i915_private* FUNC3 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct intel_dp *intel_dp,
		       const struct intel_crtc_state *old_crtc_state)
{
	struct drm_i915_private *dev_priv = FUNC3(intel_dp);

	if (!old_crtc_state->has_psr)
		return;

	if (FUNC1(!FUNC0(dev_priv)))
		return;

	FUNC5(&dev_priv->psr.lock);

	FUNC4(intel_dp);

	FUNC6(&dev_priv->psr.lock);
	FUNC2(&dev_priv->psr.work);
}
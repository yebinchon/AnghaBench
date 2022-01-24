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
struct TYPE_2__ {int active; scalar_t__ psr2_enabled; int /*<<< orphan*/  lock; } ;
struct drm_i915_private {TYPE_1__ psr; } ;

/* Variables and functions */
 int /*<<< orphan*/  EDP_PSR2_CTL ; 
 int EDP_PSR2_ENABLE ; 
 int /*<<< orphan*/  EDP_PSR_CTL ; 
 int EDP_PSR_ENABLE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct drm_i915_private* FUNC3 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct intel_dp *intel_dp)
{
	struct drm_i915_private *dev_priv = FUNC3(intel_dp);

	if (FUNC1(dev_priv) >= 9)
		FUNC2(FUNC0(EDP_PSR2_CTL) & EDP_PSR2_ENABLE);
	FUNC2(FUNC0(EDP_PSR_CTL) & EDP_PSR_ENABLE);
	FUNC2(dev_priv->psr.active);
	FUNC6(&dev_priv->psr.lock);

	/* psr1 and psr2 are mutually exclusive.*/
	if (dev_priv->psr.psr2_enabled)
		FUNC5(intel_dp);
	else
		FUNC4(intel_dp);

	dev_priv->psr.active = true;
}
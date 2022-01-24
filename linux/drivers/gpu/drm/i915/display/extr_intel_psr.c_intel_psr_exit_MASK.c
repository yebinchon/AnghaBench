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
typedef  int u32 ;
struct TYPE_2__ {int active; scalar_t__ psr2_enabled; } ;
struct drm_i915_private {TYPE_1__ psr; } ;

/* Variables and functions */
 int /*<<< orphan*/  EDP_PSR2_CTL ; 
 int EDP_PSR2_ENABLE ; 
 int /*<<< orphan*/  EDP_PSR_CTL ; 
 int EDP_PSR_ENABLE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct drm_i915_private *dev_priv)
{
	u32 val;

	if (!dev_priv->psr.active) {
		if (FUNC2(dev_priv) >= 9)
			FUNC3(FUNC0(EDP_PSR2_CTL) & EDP_PSR2_ENABLE);
		FUNC3(FUNC0(EDP_PSR_CTL) & EDP_PSR_ENABLE);
		return;
	}

	if (dev_priv->psr.psr2_enabled) {
		val = FUNC0(EDP_PSR2_CTL);
		FUNC3(!(val & EDP_PSR2_ENABLE));
		FUNC1(EDP_PSR2_CTL, val & ~EDP_PSR2_ENABLE);
	} else {
		val = FUNC0(EDP_PSR_CTL);
		FUNC3(!(val & EDP_PSR_ENABLE));
		FUNC1(EDP_PSR_CTL, val & ~EDP_PSR_ENABLE);
	}
	dev_priv->psr.active = false;
}
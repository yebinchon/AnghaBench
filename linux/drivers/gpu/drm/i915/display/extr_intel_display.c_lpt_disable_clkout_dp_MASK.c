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
typedef  int u32 ;
struct drm_i915_private {int /*<<< orphan*/  sb_lock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 int SBI_DBUFF0 ; 
 int SBI_GEN0 ; 
 int SBI_GEN0_CFG_BUFFENABLE_DISABLE ; 
 int /*<<< orphan*/  SBI_ICLK ; 
 int SBI_SSCCTL ; 
 int SBI_SSCCTL_DISABLE ; 
 int SBI_SSCCTL_PATHALT ; 
 int FUNC1 (struct drm_i915_private*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

void FUNC6(struct drm_i915_private *dev_priv)
{
	u32 reg, tmp;

	FUNC3(&dev_priv->sb_lock);

	reg = FUNC0(dev_priv) ? SBI_GEN0 : SBI_DBUFF0;
	tmp = FUNC1(dev_priv, reg, SBI_ICLK);
	tmp &= ~SBI_GEN0_CFG_BUFFENABLE_DISABLE;
	FUNC2(dev_priv, reg, tmp, SBI_ICLK);

	tmp = FUNC1(dev_priv, SBI_SSCCTL, SBI_ICLK);
	if (!(tmp & SBI_SSCCTL_DISABLE)) {
		if (!(tmp & SBI_SSCCTL_PATHALT)) {
			tmp |= SBI_SSCCTL_PATHALT;
			FUNC2(dev_priv, SBI_SSCCTL, tmp, SBI_ICLK);
			FUNC5(32);
		}
		tmp |= SBI_SSCCTL_DISABLE;
		FUNC2(dev_priv, SBI_SSCCTL, tmp, SBI_ICLK);
	}

	FUNC4(&dev_priv->sb_lock);
}
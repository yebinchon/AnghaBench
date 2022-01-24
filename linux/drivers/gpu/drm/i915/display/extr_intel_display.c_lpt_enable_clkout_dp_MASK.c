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
typedef  int /*<<< orphan*/  u32 ;
struct drm_i915_private {int /*<<< orphan*/  sb_lock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  SBI_DBUFF0 ; 
 int /*<<< orphan*/  SBI_GEN0 ; 
 int /*<<< orphan*/  SBI_GEN0_CFG_BUFFENABLE_DISABLE ; 
 int /*<<< orphan*/  SBI_ICLK ; 
 int /*<<< orphan*/  SBI_SSCCTL ; 
 int /*<<< orphan*/  SBI_SSCCTL_DISABLE ; 
 int /*<<< orphan*/  SBI_SSCCTL_PATHALT ; 
 scalar_t__ FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(struct drm_i915_private *dev_priv,
				 bool with_spread, bool with_fdi)
{
	u32 reg, tmp;

	if (FUNC1(with_fdi && !with_spread, "FDI requires downspread\n"))
		with_spread = true;
	if (FUNC1(FUNC0(dev_priv) &&
	    with_fdi, "LP PCH doesn't have FDI\n"))
		with_fdi = false;

	FUNC6(&dev_priv->sb_lock);

	tmp = FUNC2(dev_priv, SBI_SSCCTL, SBI_ICLK);
	tmp &= ~SBI_SSCCTL_DISABLE;
	tmp |= SBI_SSCCTL_PATHALT;
	FUNC3(dev_priv, SBI_SSCCTL, tmp, SBI_ICLK);

	FUNC8(24);

	if (with_spread) {
		tmp = FUNC2(dev_priv, SBI_SSCCTL, SBI_ICLK);
		tmp &= ~SBI_SSCCTL_PATHALT;
		FUNC3(dev_priv, SBI_SSCCTL, tmp, SBI_ICLK);

		if (with_fdi) {
			FUNC5(dev_priv);
			FUNC4(dev_priv);
		}
	}

	reg = FUNC0(dev_priv) ? SBI_GEN0 : SBI_DBUFF0;
	tmp = FUNC2(dev_priv, reg, SBI_ICLK);
	tmp |= SBI_GEN0_CFG_BUFFENABLE_DISABLE;
	FUNC3(dev_priv, reg, tmp, SBI_ICLK);

	FUNC7(&dev_priv->sb_lock);
}
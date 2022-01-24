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
 int FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PIXCLK_GATE ; 
 int PIXCLK_GATE_UNGATE ; 
 int /*<<< orphan*/  SBI_ICLK ; 
 int /*<<< orphan*/  SBI_SSCAUXDIV6 ; 
 int SBI_SSCAUXDIV_FINALDIV2SEL_MASK ; 
 int SBI_SSCAUXDIV_FINALDIV2SEL_SHIFT ; 
 int /*<<< orphan*/  SBI_SSCCTL6 ; 
 int SBI_SSCCTL_DISABLE ; 
 int /*<<< orphan*/  SBI_SSCDIVINTPHASE6 ; 
 int SBI_SSCDIVINTPHASE_DIVSEL_MASK ; 
 int SBI_SSCDIVINTPHASE_DIVSEL_SHIFT ; 
 int SBI_SSCDIVINTPHASE_INCVAL_MASK ; 
 int SBI_SSCDIVINTPHASE_INCVAL_SHIFT ; 
 int FUNC2 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct drm_i915_private *dev_priv)
{
	u32 divsel, phaseinc, auxdiv;
	u32 iclk_virtual_root_freq = 172800 * 1000;
	u32 iclk_pi_range = 64;
	u32 desired_divisor;
	u32 temp;

	if ((FUNC1(PIXCLK_GATE) & PIXCLK_GATE_UNGATE) == 0)
		return 0;

	FUNC3(&dev_priv->sb_lock);

	temp = FUNC2(dev_priv, SBI_SSCCTL6, SBI_ICLK);
	if (temp & SBI_SSCCTL_DISABLE) {
		FUNC4(&dev_priv->sb_lock);
		return 0;
	}

	temp = FUNC2(dev_priv, SBI_SSCDIVINTPHASE6, SBI_ICLK);
	divsel = (temp & SBI_SSCDIVINTPHASE_DIVSEL_MASK) >>
		SBI_SSCDIVINTPHASE_DIVSEL_SHIFT;
	phaseinc = (temp & SBI_SSCDIVINTPHASE_INCVAL_MASK) >>
		SBI_SSCDIVINTPHASE_INCVAL_SHIFT;

	temp = FUNC2(dev_priv, SBI_SSCAUXDIV6, SBI_ICLK);
	auxdiv = (temp & SBI_SSCAUXDIV_FINALDIV2SEL_MASK) >>
		SBI_SSCAUXDIV_FINALDIV2SEL_SHIFT;

	FUNC4(&dev_priv->sb_lock);

	desired_divisor = (divsel + 2) * iclk_pi_range + phaseinc;

	return FUNC0(iclk_virtual_root_freq,
				 desired_divisor << auxdiv);
}
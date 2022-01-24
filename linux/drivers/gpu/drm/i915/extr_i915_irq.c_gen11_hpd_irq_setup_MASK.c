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
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GEN11_DE_HPD_IMR ; 
 int GEN11_DE_TBT_HOTPLUG_MASK ; 
 int GEN11_DE_TC_HOTPLUG_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 scalar_t__ PCH_ICP ; 
 scalar_t__ PCH_TGP ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*) ; 
 int* hpd_gen11 ; 
 int* hpd_gen12 ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*) ; 
 int FUNC7 (struct drm_i915_private*,int const*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_private*) ; 

__attribute__((used)) static void FUNC9(struct drm_i915_private *dev_priv)
{
	u32 hotplug_irqs, enabled_irqs;
	const u32 *hpd;
	u32 val;

	hpd = FUNC2(dev_priv) >= 12 ? hpd_gen12 : hpd_gen11;
	enabled_irqs = FUNC7(dev_priv, hpd);
	hotplug_irqs = GEN11_DE_TC_HOTPLUG_MASK | GEN11_DE_TBT_HOTPLUG_MASK;

	val = FUNC0(GEN11_DE_HPD_IMR);
	val &= ~hotplug_irqs;
	FUNC1(GEN11_DE_HPD_IMR, val);
	FUNC4(GEN11_DE_HPD_IMR);

	FUNC5(dev_priv);

	if (FUNC3(dev_priv) >= PCH_TGP)
		FUNC8(dev_priv);
	else if (FUNC3(dev_priv) >= PCH_ICP)
		FUNC6(dev_priv);
}
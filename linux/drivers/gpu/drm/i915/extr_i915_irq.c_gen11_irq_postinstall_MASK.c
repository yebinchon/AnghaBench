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
struct intel_uncore {int /*<<< orphan*/  regs; } ;
struct drm_i915_private {int /*<<< orphan*/  gt; struct intel_uncore uncore; } ;

/* Variables and functions */
 int /*<<< orphan*/  GEN11_DISPLAY_INT_CTL ; 
 int /*<<< orphan*/  GEN11_DISPLAY_IRQ_ENABLE ; 
 int /*<<< orphan*/  GEN11_GFX_MSTR_IRQ ; 
 int /*<<< orphan*/  GEN11_GU_MISC_ ; 
 int /*<<< orphan*/  GEN11_GU_MISC_GSE ; 
 int /*<<< orphan*/  FUNC0 (struct intel_uncore*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ PCH_ICP ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_private*) ; 

__attribute__((used)) static void FUNC8(struct drm_i915_private *dev_priv)
{
	struct intel_uncore *uncore = &dev_priv->uncore;
	u32 gu_misc_masked = GEN11_GU_MISC_GSE;

	if (FUNC2(dev_priv) >= PCH_ICP)
		FUNC7(dev_priv);

	FUNC4(&dev_priv->gt);
	FUNC6(dev_priv);

	FUNC0(uncore, GEN11_GU_MISC_, ~gu_misc_masked, gu_misc_masked);

	FUNC1(GEN11_DISPLAY_INT_CTL, GEN11_DISPLAY_IRQ_ENABLE);

	FUNC5(uncore->regs);
	FUNC3(GEN11_GFX_MSTR_IRQ);
}
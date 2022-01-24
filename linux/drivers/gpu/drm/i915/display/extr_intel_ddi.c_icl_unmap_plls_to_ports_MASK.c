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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct intel_encoder {int /*<<< orphan*/  port; TYPE_1__ base; } ;
struct drm_i915_private {int /*<<< orphan*/  dpll_lock; } ;
typedef  enum phy { ____Placeholder_phy } phy ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ICL_DPCLKA_CFGCR0 ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*,int) ; 
 int FUNC3 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct drm_i915_private* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct intel_encoder *encoder)
{
	struct drm_i915_private *dev_priv = FUNC6(encoder->base.dev);
	enum phy phy = FUNC3(dev_priv, encoder->port);
	u32 val;

	FUNC4(&dev_priv->dpll_lock);

	val = FUNC0(ICL_DPCLKA_CFGCR0);
	val |= FUNC2(dev_priv, phy);
	FUNC1(ICL_DPCLKA_CFGCR0, val);

	FUNC5(&dev_priv->dpll_lock);
}
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
struct drm_i915_private {int /*<<< orphan*/  uncore; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ICP_DDI_HPD_ENABLE_MASK ; 
 int /*<<< orphan*/  ICP_TC_HPD_ENABLE_MASK ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDEIER ; 
 int /*<<< orphan*/  SDEIIR ; 
 int /*<<< orphan*/  SDEIMR ; 
 int SDE_GMBUS_ICP ; 
 int /*<<< orphan*/  TGP_DDI_HPD_ENABLE_MASK ; 
 int /*<<< orphan*/  TGP_TC_HPD_ENABLE_MASK ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct drm_i915_private *dev_priv)
{
	u32 mask = SDE_GMBUS_ICP;

	FUNC5(FUNC2(SDEIER) != 0);
	FUNC3(SDEIER, 0xffffffff);
	FUNC4(SDEIER);

	FUNC6(&dev_priv->uncore, SDEIIR);
	FUNC3(SDEIMR, ~mask);

	if (FUNC1(dev_priv))
		FUNC7(dev_priv, TGP_DDI_HPD_ENABLE_MASK,
					TGP_TC_HPD_ENABLE_MASK);
	else if (FUNC0(dev_priv))
		FUNC7(dev_priv, TGP_DDI_HPD_ENABLE_MASK, 0);
	else
		FUNC7(dev_priv, ICP_DDI_HPD_ENABLE_MASK,
					ICP_TC_HPD_ENABLE_MASK);
}
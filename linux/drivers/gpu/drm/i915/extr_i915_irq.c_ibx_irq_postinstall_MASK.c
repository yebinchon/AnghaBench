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
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SDEIIR ; 
 int /*<<< orphan*/  SDEIMR ; 
 int SDE_AUX_MASK ; 
 int SDE_AUX_MASK_CPT ; 
 int SDE_GMBUS ; 
 int SDE_GMBUS_CPT ; 
 int SDE_POISON ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_private*) ; 

__attribute__((used)) static void FUNC8(struct drm_i915_private *dev_priv)
{
	u32 mask;

	if (FUNC3(dev_priv))
		return;

	if (FUNC1(dev_priv))
		mask = SDE_GMBUS | SDE_AUX_MASK | SDE_POISON;
	else if (FUNC0(dev_priv) || FUNC2(dev_priv))
		mask = SDE_GMBUS_CPT | SDE_AUX_MASK_CPT;
	else
		mask = SDE_GMBUS_CPT;

	FUNC5(&dev_priv->uncore, SDEIIR);
	FUNC4(SDEIMR, ~mask);

	if (FUNC1(dev_priv) || FUNC0(dev_priv) ||
	    FUNC2(dev_priv))
		FUNC6(dev_priv);
	else
		FUNC7(dev_priv);
}
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
struct intel_fbc {int active; } ;
struct drm_i915_private {struct intel_fbc fbc; } ;

/* Variables and functions */
 int FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*) ; 

__attribute__((used)) static void FUNC6(struct drm_i915_private *dev_priv)
{
	struct intel_fbc *fbc = &dev_priv->fbc;

	fbc->active = true;

	if (FUNC0(dev_priv) >= 7)
		FUNC3(dev_priv);
	else if (FUNC0(dev_priv) >= 5)
		FUNC5(dev_priv);
	else if (FUNC1(dev_priv))
		FUNC2(dev_priv);
	else
		FUNC4(dev_priv);
}
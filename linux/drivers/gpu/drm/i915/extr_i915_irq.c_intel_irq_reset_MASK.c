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
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 int FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*,int) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_i915_private*) ; 

__attribute__((used)) static void FUNC13(struct drm_i915_private *dev_priv)
{
	if (FUNC0(dev_priv)) {
		if (FUNC2(dev_priv))
			FUNC5(dev_priv);
		else if (FUNC4(dev_priv))
			FUNC12(dev_priv);
		else if (FUNC3(dev_priv, 4))
			FUNC10(dev_priv);
		else if (FUNC3(dev_priv, 3))
			FUNC9(dev_priv);
		else
			FUNC8(dev_priv);
	} else {
		if (FUNC1(dev_priv) >= 11)
			FUNC6(dev_priv);
		else if (FUNC1(dev_priv) >= 8)
			FUNC7(dev_priv);
		else
			FUNC11(dev_priv);
	}
}
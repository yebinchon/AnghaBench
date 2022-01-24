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
struct drm_i915_private {int /*<<< orphan*/  drm; int /*<<< orphan*/  runtime_pm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(struct drm_i915_private *dev_priv)
{
	FUNC12(&dev_priv->runtime_pm);
	FUNC11(dev_priv);

	FUNC8(dev_priv);
	FUNC7(dev_priv);

	/*
	 * After flushing the fbdev (incl. a late async config which will
	 * have delayed queuing of a hotplug event), then flush the hotplug
	 * events.
	 */
	FUNC2(&dev_priv->drm);

	FUNC9();
	FUNC0();
	FUNC10(dev_priv);

	FUNC4(dev_priv);
	FUNC5(dev_priv);

	FUNC6(dev_priv);
	FUNC1(&dev_priv->drm);

	FUNC3(dev_priv);
}
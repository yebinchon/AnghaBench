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
struct intel_runtime_pm {int dummy; } ;
struct drm_i915_private {struct intel_runtime_pm runtime_pm; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct intel_runtime_pm*) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_runtime_pm*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_runtime_pm*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_private*) ; 
 struct drm_i915_private* FUNC9 (struct drm_device*) ; 

__attribute__((used)) static void FUNC10(struct drm_device *dev)
{
	struct drm_i915_private *dev_priv = FUNC9(dev);
	struct intel_runtime_pm *rpm = &dev_priv->runtime_pm;

	FUNC0(rpm);

	FUNC5(dev_priv);

	FUNC6(dev_priv);

	/* Paranoia: make sure we have disabled everything before we exit. */
	FUNC8(dev_priv);

	FUNC4(dev_priv);

	FUNC1(rpm);
	FUNC7(rpm);

	FUNC3(dev_priv);
	FUNC2(dev_priv);
}
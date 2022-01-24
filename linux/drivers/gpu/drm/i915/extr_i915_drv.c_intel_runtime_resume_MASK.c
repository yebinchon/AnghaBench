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
struct intel_runtime_pm {int suspended; int /*<<< orphan*/  wakeref_count; } ;
struct drm_i915_private {int /*<<< orphan*/  gt; int /*<<< orphan*/  uncore; struct intel_runtime_pm runtime_pm; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 scalar_t__ FUNC5 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  PCI_D0 ; 
 scalar_t__ FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_runtime_pm*) ; 
 int /*<<< orphan*/  FUNC9 (struct intel_runtime_pm*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC15 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *) ; 
 struct drm_i915_private* FUNC19 (struct device*) ; 
 int FUNC20 (struct drm_i915_private*,int) ; 

__attribute__((used)) static int FUNC21(struct device *kdev)
{
	struct drm_i915_private *dev_priv = FUNC19(kdev);
	struct intel_runtime_pm *rpm = &dev_priv->runtime_pm;
	int ret = 0;

	if (FUNC6(!FUNC3(dev_priv)))
		return -ENODEV;

	FUNC1("Resuming device\n");

	FUNC6(FUNC7(&rpm->wakeref_count));
	FUNC8(rpm);

	FUNC15(dev_priv, PCI_D0);
	rpm->suspended = false;
	if (FUNC18(&dev_priv->uncore))
		FUNC0("Unclaimed access during suspend, bios?\n");

	FUNC11(dev_priv);

	if (FUNC5(dev_priv) || FUNC4(dev_priv))
		ret = FUNC20(dev_priv, true);

	FUNC17(&dev_priv->uncore);

	FUNC16(dev_priv);

	/*
	 * No point of rolling back things in case of an error, as the best
	 * we can do is to hope that things will still work (and disable RPM).
	 */
	FUNC13(&dev_priv->gt);
	FUNC10(dev_priv);

	/*
	 * On VLV/CHV display interrupts are part of the display
	 * power well, so hpd is reinitialized from there. For
	 * everyone else do it here.
	 */
	if (!FUNC5(dev_priv) && !FUNC4(dev_priv))
		FUNC14(dev_priv);

	FUNC12(dev_priv);

	FUNC9(rpm);

	if (ret)
		FUNC2("Runtime resume failed, disabling it (%d)\n", ret);
	else
		FUNC1("Device resumed\n");

	return ret;
}
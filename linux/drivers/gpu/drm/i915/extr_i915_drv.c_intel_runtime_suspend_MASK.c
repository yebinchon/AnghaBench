#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct intel_runtime_pm {int suspended; } ;
struct TYPE_3__ {scalar_t__ enabled; } ;
struct TYPE_4__ {TYPE_1__ rc6; } ;
struct drm_i915_private {int /*<<< orphan*/  uncore; int /*<<< orphan*/  gt; TYPE_2__ gt_pm; struct intel_runtime_pm runtime_pm; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int ENODEV ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 scalar_t__ FUNC5 (struct drm_i915_private*) ; 
 scalar_t__ FUNC6 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  PCI_D1 ; 
 int /*<<< orphan*/  PCI_D3hot ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct intel_runtime_pm*) ; 
 int /*<<< orphan*/  FUNC10 (struct intel_runtime_pm*) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC13 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC17 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC19 (struct intel_runtime_pm*) ; 
 int /*<<< orphan*/  FUNC20 (struct drm_i915_private*) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 struct drm_i915_private* FUNC24 (struct device*) ; 
 int FUNC25 (struct drm_i915_private*) ; 

__attribute__((used)) static int FUNC26(struct device *kdev)
{
	struct drm_i915_private *dev_priv = FUNC24(kdev);
	struct intel_runtime_pm *rpm = &dev_priv->runtime_pm;
	int ret = 0;

	if (FUNC7(!(dev_priv->gt_pm.rc6.enabled && FUNC2(dev_priv))))
		return -ENODEV;

	if (FUNC7(!FUNC3(dev_priv)))
		return -ENODEV;

	FUNC0("Suspending device\n");

	FUNC9(rpm);

	/*
	 * We are safe here against re-faults, since the fault handler takes
	 * an RPM reference.
	 */
	FUNC12(dev_priv);

	FUNC15(&dev_priv->gt);

	FUNC18(dev_priv);

	FUNC23(&dev_priv->uncore);

	FUNC13(dev_priv);

	if (FUNC6(dev_priv) || FUNC5(dev_priv))
		ret = FUNC25(dev_priv);

	if (ret) {
		FUNC1("Runtime suspend failed, disabling it (%d)\n", ret);
		FUNC22(&dev_priv->uncore);

		FUNC20(dev_priv);

		FUNC14(&dev_priv->gt);

		FUNC11(dev_priv);

		FUNC10(rpm);

		return ret;
	}

	FUNC10(rpm);
	FUNC19(rpm);

	if (FUNC21(&dev_priv->uncore))
		FUNC1("Unclaimed access detected prior to suspending\n");

	rpm->suspended = true;

	/*
	 * FIXME: We really should find a document that references the arguments
	 * used below!
	 */
	if (FUNC4(dev_priv)) {
		/*
		 * On Broadwell, if we use PCI_D1 the PCH DDI ports will stop
		 * being detected, and the call we do at intel_runtime_resume()
		 * won't be able to restore them. Since PCI_D3hot matches the
		 * actual specification and appears to be working, use it.
		 */
		FUNC17(dev_priv, PCI_D3hot);
	} else {
		/*
		 * current versions of firmware which depend on this opregion
		 * notification have repurposed the D1 definition to mean
		 * "runtime suspended" vs. what you would normally expect (D3)
		 * to distinguish it from notifications that might be sent via
		 * the suspend path.
		 */
		FUNC17(dev_priv, PCI_D1);
	}

	FUNC8(&dev_priv->uncore);

	if (!FUNC6(dev_priv) && !FUNC5(dev_priv))
		FUNC16(dev_priv);

	FUNC0("Device suspended\n");
	return 0;
}
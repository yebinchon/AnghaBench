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
struct pci_dev {int dummy; } ;
struct intel_runtime_pm {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  user_forcewake_count; } ;
struct TYPE_3__ {struct pci_dev* pdev; } ;
struct drm_i915_private {TYPE_2__ uncore; struct intel_runtime_pm runtime_pm; TYPE_1__ drm; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  PCI_D3hot ; 
 int /*<<< orphan*/  FUNC4 (struct intel_runtime_pm*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_runtime_pm*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct intel_runtime_pm*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC15 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC16 (struct drm_device*) ; 
 int FUNC17 (struct drm_i915_private*) ; 

__attribute__((used)) static int FUNC18(struct drm_device *dev, bool hibernation)
{
	struct drm_i915_private *dev_priv = FUNC16(dev);
	struct pci_dev *pdev = dev_priv->drm.pdev;
	struct intel_runtime_pm *rpm = &dev_priv->runtime_pm;
	int ret = 0;

	FUNC4(rpm);

	FUNC7(dev_priv);

	FUNC8(dev_priv);

	FUNC13(&dev_priv->uncore);

	FUNC11(dev_priv,
				    FUNC6(dev_priv, hibernation));

	FUNC9(dev_priv);

	if (FUNC3(dev_priv) || FUNC2(dev_priv))
		ret = FUNC17(dev_priv);

	if (ret) {
		FUNC0("Suspend complete failed: %d\n", ret);
		FUNC10(dev_priv);

		goto out;
	}

	FUNC14(pdev);
	/*
	 * During hibernation on some platforms the BIOS may try to access
	 * the device even though it's already in D3 and hang the machine. So
	 * leave the device in D0 on those platforms and hope the BIOS will
	 * power down the device properly. The issue was seen on multiple old
	 * GENs with different BIOS vendors, so having an explicit blacklist
	 * is inpractical; apply the workaround on everything pre GEN6. The
	 * platforms where the issue was seen:
	 * Lenovo Thinkpad X301, X61s, X60, T60, X41
	 * Fujitsu FSC S7110
	 * Acer Aspire 1830T
	 */
	if (!(hibernation && FUNC1(dev_priv) < 6))
		FUNC15(pdev, PCI_D3hot);

out:
	FUNC5(rpm);
	if (!dev_priv->uncore.user_forcewake_count)
		FUNC12(rpm);

	return ret;
}
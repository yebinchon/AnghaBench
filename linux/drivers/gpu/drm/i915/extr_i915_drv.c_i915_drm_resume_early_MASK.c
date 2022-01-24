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
struct pci_dev {int dummy; } ;
struct TYPE_2__ {struct pci_dev* pdev; } ;
struct drm_i915_private {int /*<<< orphan*/  runtime_pm; int /*<<< orphan*/  gt; int /*<<< orphan*/  uncore; TYPE_1__ drm; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int EIO ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  PCI_D0 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*) ; 
 int FUNC14 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC15 (struct drm_device*) ; 
 int FUNC16 (struct drm_i915_private*,int) ; 

__attribute__((used)) static int FUNC17(struct drm_device *dev)
{
	struct drm_i915_private *dev_priv = FUNC15(dev);
	struct pci_dev *pdev = dev_priv->drm.pdev;
	int ret;

	/*
	 * We have a resume ordering issue with the snd-hda driver also
	 * requiring our device to be power up. Due to the lack of a
	 * parent/child relationship we currently solve this with an early
	 * resume hook.
	 *
	 * FIXME: This should be solved with a special hdmi sink device or
	 * similar so that power domains can be employed.
	 */

	/*
	 * Note that we need to set the power state explicitly, since we
	 * powered off the device during freeze and the PCI core won't power
	 * it back up for us during thaw. Powering off the device during
	 * freeze is not a hard requirement though, and during the
	 * suspend/resume phases the PCI core makes sure we get here with the
	 * device powered on. So in case we change our freeze logic and keep
	 * the device powered we can also remove the following set power state
	 * call.
	 */
	ret = FUNC14(pdev, PCI_D0);
	if (ret) {
		FUNC0("failed to set PCI D0 power state (%d)\n", ret);
		return ret;
	}

	/*
	 * Note that pci_enable_device() first enables any parent bridge
	 * device and only then sets the power state for this device. The
	 * bridge enabling is a nop though, since bridge devices are resumed
	 * first. The order of enabling power and enabling the device is
	 * imposed by the PCI core as described above, so here we preserve the
	 * same order for the freeze/thaw phases.
	 *
	 * TODO: eventually we should remove pci_disable_device() /
	 * pci_enable_enable_device() from suspend/resume. Due to how they
	 * depend on the device enable refcount we can't anyway depend on them
	 * disabling/enabling the device.
	 */
	if (FUNC12(pdev))
		return -EIO;

	FUNC13(pdev);

	FUNC3(&dev_priv->runtime_pm);

	if (FUNC2(dev_priv) || FUNC1(dev_priv))
		ret = FUNC16(dev_priv, false);
	if (ret)
		FUNC0("Resume prepare failed: %d, continuing anyway\n",
			  ret);

	FUNC11(&dev_priv->uncore);

	FUNC7(&dev_priv->gt);

	FUNC6(dev_priv);

	FUNC10(dev_priv);

	FUNC9(dev_priv);

	FUNC5(dev_priv);

	FUNC8(&dev_priv->gt, true);

	FUNC4(&dev_priv->runtime_pm);

	return ret;
}
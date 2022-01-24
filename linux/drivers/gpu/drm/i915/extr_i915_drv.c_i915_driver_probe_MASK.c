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
struct pci_device_id {scalar_t__ driver_data; } ;
struct pci_dev {int dummy; } ;
struct intel_device_info {int gen; } ;
struct TYPE_4__ {int /*<<< orphan*/  driver_features; } ;
struct drm_i915_private {int /*<<< orphan*/  runtime_pm; TYPE_2__ drm; } ;
struct TYPE_3__ {int /*<<< orphan*/  nuclear_pageflip; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_ATOMIC ; 
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 int FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*) ; 
 struct drm_i915_private* FUNC5 (struct pci_dev*,struct pci_device_id const*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*) ; 
 int FUNC7 (struct drm_i915_private*) ; 
 int FUNC8 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_i915_private*) ; 
 int FUNC11 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_i915_private*) ; 
 int FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC15 (struct drm_i915_private*) ; 
 TYPE_1__ i915_modparams ; 
 int /*<<< orphan*/  FUNC16 (struct drm_i915_private*,char*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC18 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC19 (struct pci_dev*) ; 
 int FUNC20 (struct pci_dev*) ; 

int FUNC21(struct pci_dev *pdev, const struct pci_device_id *ent)
{
	const struct intel_device_info *match_info =
		(struct intel_device_info *)ent->driver_data;
	struct drm_i915_private *dev_priv;
	int ret;

	dev_priv = FUNC5(pdev, ent);
	if (FUNC0(dev_priv))
		return FUNC1(dev_priv);

	/* Disable nuclear pageflip by default on pre-ILK */
	if (!i915_modparams.nuclear_pageflip && match_info->gen < 5)
		dev_priv->drm.driver_features &= ~DRIVER_ATOMIC;

	ret = FUNC20(pdev);
	if (ret)
		goto out_fini;

	ret = FUNC7(dev_priv);
	if (ret < 0)
		goto out_pci_disable;

	FUNC2(&dev_priv->runtime_pm);

	FUNC4(dev_priv);

	ret = FUNC11(dev_priv);
	if (ret < 0)
		goto out_runtime_pm_put;

	ret = FUNC8(dev_priv);
	if (ret < 0)
		goto out_cleanup_mmio;

	ret = FUNC13(&dev_priv->drm);
	if (ret < 0)
		goto out_cleanup_hw;

	FUNC14(dev_priv);

	FUNC3(&dev_priv->runtime_pm);

	FUNC17(dev_priv);

	return 0;

out_cleanup_hw:
	FUNC9(dev_priv);
	FUNC15(dev_priv);

	/* Paranoia: make sure we have disabled everything before we exit. */
	FUNC18(dev_priv);
out_cleanup_mmio:
	FUNC12(dev_priv);
out_runtime_pm_put:
	FUNC3(&dev_priv->runtime_pm);
	FUNC10(dev_priv);
out_pci_disable:
	FUNC19(pdev);
out_fini:
	FUNC16(dev_priv, "Device initialization failed (%d)\n", ret);
	FUNC6(dev_priv);
	return ret;
}
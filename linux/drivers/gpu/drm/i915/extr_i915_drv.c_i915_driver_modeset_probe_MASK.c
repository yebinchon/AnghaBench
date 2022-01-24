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
struct TYPE_3__ {struct pci_dev* pdev; } ;
struct drm_i915_private {TYPE_1__ drm; } ;
struct drm_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  num_pipes; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 TYPE_2__* FUNC1 (struct drm_i915_private*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*) ; 
 int FUNC5 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*) ; 
 scalar_t__ FUNC7 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  i915_switcheroo_ops ; 
 int /*<<< orphan*/ * i915_vga_set_decode ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_i915_private*) ; 
 int FUNC11 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC13 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC14 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC15 (struct drm_i915_private*) ; 
 int FUNC16 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC17 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC18 (struct drm_device*) ; 
 int FUNC19 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC20 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC21 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC22 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 (struct drm_i915_private*) ; 
 struct drm_i915_private* FUNC25 (struct drm_device*) ; 
 int FUNC26 (struct pci_dev*,struct drm_i915_private*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC27 (struct pci_dev*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC28 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC29(struct drm_device *dev)
{
	struct drm_i915_private *dev_priv = FUNC25(dev);
	struct pci_dev *pdev = dev_priv->drm.pdev;
	int ret;

	if (FUNC7(dev_priv))
		return -ENODEV;

	if (FUNC0(dev_priv)) {
		ret = FUNC2(&dev_priv->drm,
				      FUNC1(dev_priv)->num_pipes);
		if (ret)
			goto out;
	}

	FUNC8(dev_priv);

	/* If we have > 1 VGA cards, then we need to arbitrate access
	 * to the common VGA resources.
	 *
	 * If we are a secondary display controller (!PCI_DISPLAY_CLASS_VGA),
	 * then we do not take part in VGA arbitration and the
	 * vga_client_register() fails with -ENODEV.
	 */
	ret = FUNC26(pdev, dev_priv, NULL, i915_vga_set_decode);
	if (ret && ret != -ENODEV)
		goto out;

	FUNC23();

	ret = FUNC27(pdev, &i915_switcheroo_ops, false);
	if (ret)
		goto cleanup_vga_client;

	/* must happen before intel_power_domains_init_hw() on VLV/CHV */
	FUNC24(dev_priv);

	FUNC22(dev_priv, false);

	FUNC10(dev_priv);

	ret = FUNC16(dev_priv);
	if (ret)
		goto cleanup_csr;

	FUNC12(dev_priv);

	/* Important: The output setup functions called by modeset_init need
	 * working irqs for e.g. gmbus and dp aux transfers. */
	ret = FUNC19(dev);
	if (ret)
		goto cleanup_irq;

	ret = FUNC5(dev_priv);
	if (ret)
		goto cleanup_modeset;

	FUNC20(dev_priv);

	if (!FUNC0(dev_priv))
		return 0;

	ret = FUNC11(dev);
	if (ret)
		goto cleanup_gem;

	/* Only enable hotplug handling once the fbdev is fully set up. */
	FUNC14(dev_priv);

	FUNC15(dev_priv);

	return 0;

cleanup_gem:
	FUNC6(dev_priv);
	FUNC4(dev_priv);
	FUNC3(dev_priv);
cleanup_modeset:
	FUNC18(dev);
cleanup_irq:
	FUNC17(dev_priv);
	FUNC13(dev_priv);
cleanup_csr:
	FUNC9(dev_priv);
	FUNC21(dev_priv);
	FUNC28(pdev);
cleanup_vga_client:
	FUNC26(pdev, NULL, NULL, NULL);
out:
	return ret;
}
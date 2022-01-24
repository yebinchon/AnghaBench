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
struct pci_dev {scalar_t__ msi_enabled; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {struct pci_dev* pdev; } ;
struct drm_i915_private {int /*<<< orphan*/  pm_qos; TYPE_1__ drm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int ENODEV ; 
 int ENXIO ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 int FUNC5 (struct drm_i915_private*) ; 
 scalar_t__ FUNC6 (struct drm_i915_private*,int) ; 
 scalar_t__ FUNC7 (struct drm_i915_private*) ; 
 scalar_t__ FUNC8 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  PM_QOS_CPU_DMA_LATENCY ; 
 int /*<<< orphan*/  PM_QOS_DEFAULT_VALUE ; 
 int /*<<< orphan*/  UINT_MAX ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_i915_private*) ; 
 int FUNC13 (struct drm_i915_private*) ; 
 int FUNC14 (struct drm_i915_private*) ; 
 int FUNC15 (struct drm_i915_private*) ; 
 scalar_t__ FUNC16 (struct drm_i915_private*) ; 
 int FUNC17 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC18 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC19 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC20 (struct drm_i915_private*,char*) ; 
 int /*<<< orphan*/  FUNC21 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC22 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC23 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC24 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC25 (struct drm_i915_private*) ; 
 int FUNC26 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC27 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC28 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC29 (struct drm_i915_private*) ; 
 scalar_t__ FUNC30 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC31 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC32 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC33 (struct pci_dev*) ; 
 scalar_t__ FUNC34 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC35 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ *) ; 
 int FUNC38 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC39(struct drm_i915_private *dev_priv)
{
	struct pci_dev *pdev = dev_priv->drm.pdev;
	int ret;

	if (FUNC16(dev_priv))
		return -ENODEV;

	FUNC22(dev_priv);

	if (FUNC4(dev_priv)) {
		if (FUNC30(dev_priv) &&
		    !FUNC31(dev_priv)) {
			FUNC20(dev_priv,
					  "incompatible vGPU found, support for isolated ppGTT required\n");
			return -ENXIO;
		}
	}

	if (FUNC3(dev_priv)) {
		/*
		 * Older GVT emulation depends upon intercepting CSB mmio,
		 * which we no longer use, preferring to use the HWSP cache
		 * instead.
		 */
		if (FUNC30(dev_priv) &&
		    !FUNC32(dev_priv)) {
			FUNC20(dev_priv,
					  "old vGPU host found, support for HWSP emulation required\n");
			return -ENXIO;
		}
	}

	FUNC29(dev_priv);

	/* needs to be done before ggtt probe */
	FUNC11(dev_priv);

	FUNC19(dev_priv);

	ret = FUNC15(dev_priv);
	if (ret)
		goto err_perf;

	/*
	 * WARNING: Apparently we must kick fbdev drivers before vgacon,
	 * otherwise the vga fbdev driver falls over.
	 */
	ret = FUNC17(dev_priv);
	if (ret) {
		FUNC2("failed to remove conflicting framebuffer drivers\n");
		goto err_ggtt;
	}

	ret = FUNC38(pdev);
	if (ret) {
		FUNC2("failed to remove conflicting VGA console\n");
		goto err_ggtt;
	}

	ret = FUNC14(dev_priv);
	if (ret)
		goto err_ggtt;

	FUNC24(dev_priv);

	ret = FUNC13(dev_priv);
	if (ret) {
		FUNC2("failed to enable GGTT\n");
		goto err_ggtt;
	}

	FUNC35(pdev);

	/*
	 * We don't have a max segment size, so set it to the max so sg's
	 * debugging layer doesn't complain
	 */
	FUNC10(&pdev->dev, UINT_MAX);

	/* overlay on gen2 is broken and can't address above 1G */
	if (FUNC6(dev_priv, 2)) {
		ret = FUNC9(&pdev->dev, FUNC0(30));
		if (ret) {
			FUNC2("failed to set DMA mask\n");

			goto err_ggtt;
		}
	}

	/* 965GM sometimes incorrectly writes to hardware status page (HWS)
	 * using 32bit addressing, overwriting memory if HWS is located
	 * above 4GB.
	 *
	 * The documentation also mentions an issue with undefined
	 * behaviour if any general state is accessed within a page above 4GB,
	 * which also needs to be handled carefully.
	 */
	if (FUNC7(dev_priv) || FUNC8(dev_priv)) {
		ret = FUNC9(&pdev->dev, FUNC0(32));

		if (ret) {
			FUNC2("failed to set DMA mask\n");

			goto err_ggtt;
		}
	}

	FUNC36(&dev_priv->pm_qos, PM_QOS_CPU_DMA_LATENCY,
			   PM_QOS_DEFAULT_VALUE);

	/* BIOS often leaves RC6 enabled, but disable it for hw init */
	FUNC28(dev_priv);

	FUNC25(dev_priv);

	/* On the 945G/GM, the chipset reports the MSI capability on the
	 * integrated graphics even though the support isn't actually there
	 * according to the published specs.  It doesn't appear to function
	 * correctly in testing on 945G.
	 * This may be a side effect of MSI having been made available for PEG
	 * and the registers being closely associated.
	 *
	 * According to chipset errata, on the 965GM, MSI interrupts may
	 * be lost or delayed, and was defeatured. MSI interrupts seem to
	 * get lost on g4x as well, and interrupt delivery seems to stay
	 * properly dead afterwards. So we'll just disable them for all
	 * pre-gen5 chipsets.
	 *
	 * dp aux and gmbus irq on gen4 seems to be able to generate legacy
	 * interrupts even when in MSI mode. This results in spurious
	 * interrupt warnings if the legacy irq no. is shared with another
	 * device. The kernel then disables that interrupt source and so
	 * prevents the other device from working properly.
	 */
	if (FUNC5(dev_priv) >= 5) {
		if (FUNC34(pdev) < 0)
			FUNC1("can't enable MSI");
	}

	ret = FUNC26(dev_priv);
	if (ret)
		goto err_msi;

	FUNC27(dev_priv);
	/*
	 * Fill the dram structure to get the system raw bandwidth and
	 * dram info. This will be used for memory latency calculation.
	 */
	FUNC23(dev_priv);

	FUNC21(dev_priv);

	return 0;

err_msi:
	if (pdev->msi_enabled)
		FUNC33(pdev);
	FUNC37(&dev_priv->pm_qos);
err_ggtt:
	FUNC12(dev_priv);
err_perf:
	FUNC18(dev_priv);
	return ret;
}
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
struct drm_i915_private {int /*<<< orphan*/  runtime_pm; int /*<<< orphan*/  suspend_count; TYPE_1__ drm; } ;
struct drm_device {int dummy; } ;
typedef  int /*<<< orphan*/  pci_power_t ;

/* Variables and functions */
 int /*<<< orphan*/  FBINFO_STATE_SUSPENDED ; 
 int /*<<< orphan*/  PCI_D1 ; 
 int /*<<< orphan*/  PCI_D3cold ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC13 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC14 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC15 (struct pci_dev*) ; 
 scalar_t__ FUNC16 (struct drm_i915_private*) ; 
 struct drm_i915_private* FUNC17 (struct drm_device*) ; 

__attribute__((used)) static int FUNC18(struct drm_device *dev)
{
	struct drm_i915_private *dev_priv = FUNC17(dev);
	struct pci_dev *pdev = dev_priv->drm.pdev;
	pci_power_t opregion_target_state;

	FUNC0(&dev_priv->runtime_pm);

	/* We do a lot of poking in a lot of registers, make sure they work
	 * properly. */
	FUNC11(dev_priv);

	FUNC1(dev);

	FUNC15(pdev);

	FUNC6(dev);

	FUNC7(dev_priv);

	FUNC12(dev_priv);
	FUNC9(dev_priv);

	FUNC13(dev_priv);

	FUNC14(dev_priv);

	FUNC3(dev_priv);

	FUNC4(dev_priv);

	opregion_target_state = FUNC16(dev_priv) ? PCI_D1 : PCI_D3cold;
	FUNC10(dev_priv, opregion_target_state);

	FUNC8(dev, FBINFO_STATE_SUSPENDED, true);

	dev_priv->suspend_count++;

	FUNC5(dev_priv);

	FUNC2(&dev_priv->runtime_pm);

	return 0;
}
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
struct TYPE_4__ {int /*<<< orphan*/  struct_mutex; struct pci_dev* pdev; } ;
struct TYPE_3__ {void** saveSWF3; void** saveSWF1; void** saveSWF0; void* saveMI_ARB_STATE; void* saveCACHE_MODE_0; int /*<<< orphan*/  saveGCDGMBUS; } ;
struct drm_i915_private {TYPE_2__ drm; TYPE_1__ regfile; } ;

/* Variables and functions */
 int /*<<< orphan*/  CACHE_MODE_0 ; 
 int /*<<< orphan*/  GCDGMBUS ; 
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*,int) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  MI_ARB_STATE ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC12(struct drm_i915_private *dev_priv)
{
	struct pci_dev *pdev = dev_priv->drm.pdev;
	int i;

	FUNC9(&dev_priv->drm.struct_mutex);

	FUNC8(dev_priv);

	if (FUNC3(dev_priv, 4))
		FUNC11(pdev, GCDGMBUS,
				     &dev_priv->regfile.saveGCDGMBUS);

	/* Cache mode state */
	if (FUNC2(dev_priv) < 7)
		dev_priv->regfile.saveCACHE_MODE_0 = FUNC1(CACHE_MODE_0);

	/* Memory Arbitration state */
	dev_priv->regfile.saveMI_ARB_STATE = FUNC1(MI_ARB_STATE);

	/* Scratch space */
	if (FUNC3(dev_priv, 2) && FUNC4(dev_priv)) {
		for (i = 0; i < 7; i++) {
			dev_priv->regfile.saveSWF0[i] = FUNC1(FUNC5(i));
			dev_priv->regfile.saveSWF1[i] = FUNC1(FUNC6(i));
		}
		for (i = 0; i < 3; i++)
			dev_priv->regfile.saveSWF3[i] = FUNC1(FUNC7(i));
	} else if (FUNC3(dev_priv, 2)) {
		for (i = 0; i < 7; i++)
			dev_priv->regfile.saveSWF1[i] = FUNC1(FUNC6(i));
	} else if (FUNC0(dev_priv)) {
		for (i = 0; i < 16; i++) {
			dev_priv->regfile.saveSWF0[i] = FUNC1(FUNC5(i));
			dev_priv->regfile.saveSWF1[i] = FUNC1(FUNC6(i));
		}
		for (i = 0; i < 3; i++)
			dev_priv->regfile.saveSWF3[i] = FUNC1(FUNC7(i));
	}

	FUNC10(&dev_priv->drm.struct_mutex);

	return 0;
}
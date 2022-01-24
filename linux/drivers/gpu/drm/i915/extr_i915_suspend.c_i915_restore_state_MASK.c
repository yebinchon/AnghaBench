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
struct TYPE_3__ {int saveCACHE_MODE_0; int saveMI_ARB_STATE; int* saveSWF0; int* saveSWF1; int* saveSWF3; int /*<<< orphan*/  saveGCDGMBUS; } ;
struct drm_i915_private {TYPE_2__ drm; TYPE_1__ regfile; } ;

/* Variables and functions */
 int /*<<< orphan*/  CACHE_MODE_0 ; 
 int /*<<< orphan*/  GCDGMBUS ; 
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*,int) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  MI_ARB_STATE ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC13(struct drm_i915_private *dev_priv)
{
	struct pci_dev *pdev = dev_priv->drm.pdev;
	int i;

	FUNC10(&dev_priv->drm.struct_mutex);

	if (FUNC3(dev_priv, 4))
		FUNC12(pdev, GCDGMBUS,
				      dev_priv->regfile.saveGCDGMBUS);
	FUNC8(dev_priv);

	/* Cache mode state */
	if (FUNC2(dev_priv) < 7)
		FUNC1(CACHE_MODE_0, dev_priv->regfile.saveCACHE_MODE_0 |
			   0xffff0000);

	/* Memory arbitration state */
	FUNC1(MI_ARB_STATE, dev_priv->regfile.saveMI_ARB_STATE | 0xffff0000);

	/* Scratch space */
	if (FUNC3(dev_priv, 2) && FUNC4(dev_priv)) {
		for (i = 0; i < 7; i++) {
			FUNC1(FUNC5(i), dev_priv->regfile.saveSWF0[i]);
			FUNC1(FUNC6(i), dev_priv->regfile.saveSWF1[i]);
		}
		for (i = 0; i < 3; i++)
			FUNC1(FUNC7(i), dev_priv->regfile.saveSWF3[i]);
	} else if (FUNC3(dev_priv, 2)) {
		for (i = 0; i < 7; i++)
			FUNC1(FUNC6(i), dev_priv->regfile.saveSWF1[i]);
	} else if (FUNC0(dev_priv)) {
		for (i = 0; i < 16; i++) {
			FUNC1(FUNC5(i), dev_priv->regfile.saveSWF0[i]);
			FUNC1(FUNC6(i), dev_priv->regfile.saveSWF1[i]);
		}
		for (i = 0; i < 3; i++)
			FUNC1(FUNC7(i), dev_priv->regfile.saveSWF3[i]);
	}

	FUNC11(&dev_priv->drm.struct_mutex);

	FUNC9(dev_priv);

	return 0;
}
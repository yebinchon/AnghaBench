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
typedef  int uint32_t ;
struct pci_dev {int dummy; } ;
struct drm_psb_private {int iLVDS_enable; int is_lvds_on; int is_mipi_on; int video_device_fuse; int fuse_reg_value; int core_freq; } ;
struct drm_device {int /*<<< orphan*/  dev; TYPE_1__* pdev; struct drm_psb_private* dev_private; } ;
struct TYPE_2__ {int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int FB_MIPI_DISABLE ; 
 int /*<<< orphan*/  FB_REG06 ; 
 int /*<<< orphan*/  FB_REG09 ; 
#define  FB_SKU_100 130 
#define  FB_SKU_100L 129 
#define  FB_SKU_83 128 
 int FB_SKU_MASK ; 
 int FB_SKU_SHIFT ; 
 scalar_t__ FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct pci_dev* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct drm_device *dev)
{
	struct drm_psb_private *dev_priv = dev->dev_private;
	struct pci_dev *pci_root =
		FUNC7(FUNC6(dev->pdev->bus),
					    0, 0);
	uint32_t fuse_value = 0;
	uint32_t fuse_value_tmp = 0;

#define FB_REG06 0xD0810600
#define FB_MIPI_DISABLE  (1 << 11)
#define FB_REG09 0xD0810900
#define FB_SKU_MASK  0x7000
#define FB_SKU_SHIFT 12
#define FB_SKU_100 0
#define FB_SKU_100L 1
#define FB_SKU_83 2
	if (pci_root == NULL) {
		FUNC2(1);
		return;
	}


	FUNC9(pci_root, 0xD0, FB_REG06);
	FUNC8(pci_root, 0xD4, &fuse_value);

	/* FB_MIPI_DISABLE doesn't mean LVDS on with Medfield */
	if (FUNC1(dev))
		dev_priv->iLVDS_enable = fuse_value & FB_MIPI_DISABLE;

	FUNC0("internal display is %s\n",
		 dev_priv->iLVDS_enable ? "LVDS display" : "MIPI display");

	 /* Prevent runtime suspend at start*/
	 if (dev_priv->iLVDS_enable) {
		dev_priv->is_lvds_on = true;
		dev_priv->is_mipi_on = false;
	} else {
		dev_priv->is_mipi_on = true;
		dev_priv->is_lvds_on = false;
	}

	dev_priv->video_device_fuse = fuse_value;

	FUNC9(pci_root, 0xD0, FB_REG09);
	FUNC8(pci_root, 0xD4, &fuse_value);

	FUNC3(dev->dev, "SKU values is 0x%x.\n", fuse_value);
	fuse_value_tmp = (fuse_value & FB_SKU_MASK) >> FB_SKU_SHIFT;

	dev_priv->fuse_reg_value = fuse_value;

	switch (fuse_value_tmp) {
	case FB_SKU_100:
		dev_priv->core_freq = 200;
		break;
	case FB_SKU_100L:
		dev_priv->core_freq = 100;
		break;
	case FB_SKU_83:
		dev_priv->core_freq = 166;
		break;
	default:
		FUNC4(dev->dev, "Invalid SKU values, SKU value = 0x%08x\n",
								fuse_value_tmp);
		dev_priv->core_freq = 0;
	}
	FUNC3(dev->dev, "LNC core clk is %dMHz.\n", dev_priv->core_freq);
	FUNC5(pci_root);
}
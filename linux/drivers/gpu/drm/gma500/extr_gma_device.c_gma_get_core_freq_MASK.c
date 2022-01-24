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
struct drm_psb_private {int core_freq; } ;
struct drm_device {struct drm_psb_private* dev_private; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct pci_dev* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int,int) ; 

void FUNC5(struct drm_device *dev)
{
	uint32_t clock;
	struct pci_dev *pci_root =
		FUNC2(FUNC1(dev->pdev->bus),
					    0, 0);
	struct drm_psb_private *dev_priv = dev->dev_private;

	/*pci_write_config_dword(pci_root, 0xD4, 0x00C32004);*/
	/*pci_write_config_dword(pci_root, 0xD0, 0xE0033000);*/

	FUNC4(pci_root, 0xD0, 0xD0050300);
	FUNC3(pci_root, 0xD4, &clock);
	FUNC0(pci_root);

	switch (clock & 0x07) {
	case 0:
		dev_priv->core_freq = 100;
		break;
	case 1:
		dev_priv->core_freq = 133;
		break;
	case 2:
		dev_priv->core_freq = 150;
		break;
	case 3:
		dev_priv->core_freq = 178;
		break;
	case 4:
		dev_priv->core_freq = 200;
		break;
	case 5:
	case 6:
	case 7:
		dev_priv->core_freq = 266;
		break;
	default:
		dev_priv->core_freq = 0;
	}
}
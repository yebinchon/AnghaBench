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
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint32_t ;
struct pci_dev {int dummy; } ;
struct drm_psb_private {scalar_t__ platform_rev_id; TYPE_2__* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; TYPE_1__* pdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 struct pci_dev* FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int,scalar_t__*) ; 

__attribute__((used)) static void FUNC7(struct drm_psb_private *dev_priv)
{
	uint32_t platform_rev_id = 0;
	int domain = FUNC4(dev_priv->dev->pdev->bus);
	struct pci_dev *pci_gfx_root =
		FUNC5(domain, 0, FUNC0(2, 0));

	if (pci_gfx_root == NULL) {
		FUNC1(1);
		return;
	}
	FUNC6(pci_gfx_root, 0x08, &platform_rev_id);
	dev_priv->platform_rev_id = (uint8_t) platform_rev_id;
	FUNC3(pci_gfx_root);
	FUNC2(dev_priv->dev->dev, "platform_rev_id is %x\n",
					dev_priv->platform_rev_id);
}
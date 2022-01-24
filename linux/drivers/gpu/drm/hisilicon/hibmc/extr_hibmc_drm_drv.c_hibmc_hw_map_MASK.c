#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct pci_dev {int dummy; } ;
struct hibmc_drm_private {void* fb_size; void* fb_base; int /*<<< orphan*/  fb_map; int /*<<< orphan*/  mmio; struct drm_device* dev; } ;
struct drm_device {int /*<<< orphan*/  dev; struct pci_dev* pdev; } ;
typedef  void* resource_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,void*) ; 
 void* FUNC3 (struct pci_dev*,int) ; 
 void* FUNC4 (struct pci_dev*,int) ; 

__attribute__((used)) static int FUNC5(struct hibmc_drm_private *priv)
{
	struct drm_device *dev = priv->dev;
	struct pci_dev *pdev = dev->pdev;
	resource_size_t addr, size, ioaddr, iosize;

	ioaddr = FUNC4(pdev, 1);
	iosize = FUNC3(pdev, 1);
	priv->mmio = FUNC2(dev->dev, ioaddr, iosize);
	if (!priv->mmio) {
		FUNC0("Cannot map mmio region\n");
		return -ENOMEM;
	}

	addr = FUNC4(pdev, 0);
	size = FUNC3(pdev, 0);
	priv->fb_map = FUNC1(dev->dev, addr, size);
	if (!priv->fb_map) {
		FUNC0("Cannot map framebuffer\n");
		return -ENOMEM;
	}
	priv->fb_base = addr;
	priv->fb_size = size;

	return 0;
}
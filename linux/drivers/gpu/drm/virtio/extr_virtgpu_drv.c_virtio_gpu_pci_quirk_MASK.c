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
typedef  int /*<<< orphan*/  unique ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct virtio_device {TYPE_1__ dev; } ;
struct pci_dev {int class; int /*<<< orphan*/  dev; } ;
struct drm_device {struct pci_dev* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,char const*) ; 
 int PCI_CLASS_DISPLAY_VGA ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct drm_device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char const*) ; 
 struct pci_dev* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct drm_device *dev, struct virtio_device *vdev)
{
	struct pci_dev *pdev = FUNC5(vdev->dev.parent);
	const char *pname = FUNC1(&pdev->dev);
	bool vga = (pdev->class >> 8) == PCI_CLASS_DISPLAY_VGA;
	char unique[20];

	FUNC0("pci: %s detected at %s\n",
		 vga ? "virtio-vga" : "virtio-gpu-pci",
		 pname);
	dev->pdev = pdev;
	if (vga)
		FUNC3(pdev,
								  0,
								  "virtiodrmfb");

	/*
	 * Normally the drm_dev_set_unique() call is done by core DRM.
	 * The following comment covers, why virtio cannot rely on it.
	 *
	 * Unlike the other virtual GPU drivers, virtio abstracts the
	 * underlying bus type by using struct virtio_device.
	 *
	 * Hence the dev_is_pci() check, used in core DRM, will fail
	 * and the unique returned will be the virtio_device "virtio0",
	 * while a "pci:..." one is required.
	 *
	 * A few other ideas were considered:
	 * - Extend the dev_is_pci() check [in drm_set_busid] to
	 *   consider virtio.
	 *   Seems like a bigger hack than what we have already.
	 *
	 * - Point drm_device::dev to the parent of the virtio_device
	 *   Semantic changes:
	 *   * Using the wrong device for i2c, framebuffer_alloc and
	 *     prime import.
	 *   Visual changes:
	 *   * Helpers such as DRM_DEV_ERROR, dev_info, drm_printer,
	 *     will print the wrong information.
	 *
	 * We could address the latter issues, by introducing
	 * drm_device::bus_dev, ... which would be used solely for this.
	 *
	 * So for the moment keep things as-is, with a bulky comment
	 * for the next person who feels like removing this
	 * drm_dev_set_unique() quirk.
	 */
	FUNC4(unique, sizeof(unique), "pci:%s", pname);
	return FUNC2(dev, unique);
}
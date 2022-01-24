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
struct qxl_device {int dummy; } ;
struct pci_dev {int dummy; } ;
struct drm_device {struct qxl_device* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  VGA_RSRC_LEGACY_IO ; 
 int /*<<< orphan*/  FUNC0 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 scalar_t__ FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct qxl_device*) ; 
 struct drm_device* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct qxl_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct qxl_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct pci_dev *pdev)
{
	struct drm_device *dev = FUNC4(pdev);
	struct qxl_device *qdev = dev->dev_private;

	FUNC1(dev);

	FUNC6(qdev);
	FUNC5(qdev);
	if (FUNC2(pdev))
		FUNC7(pdev, VGA_RSRC_LEGACY_IO);

	dev->dev_private = NULL;
	FUNC3(qdev);
	FUNC0(dev);
}
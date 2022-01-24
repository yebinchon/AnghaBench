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
struct qxl_device {int /*<<< orphan*/  release_ring; int /*<<< orphan*/  command_ring; } ;
struct pci_dev {int dummy; } ;
struct drm_device {struct qxl_device* dev_private; struct pci_dev* pdev; } ;

/* Variables and functions */
 int FUNC0 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qxl_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct qxl_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct qxl_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct qxl_device*) ; 

__attribute__((used)) static int FUNC7(struct drm_device *dev)
{
	struct pci_dev *pdev = dev->pdev;
	struct qxl_device *qdev = dev->dev_private;
	int ret;

	ret = FUNC0(dev);
	if (ret)
		return ret;

	FUNC3(qdev);
	FUNC5(qdev);
	FUNC6(qdev);

	while (!FUNC2(qdev->command_ring));
	while (!FUNC2(qdev->release_ring))
		FUNC4(qdev, 1);

	FUNC1(pdev);

	return 0;
}
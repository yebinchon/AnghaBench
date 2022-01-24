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
struct device {int dummy; } ;

/* Variables and functions */
 struct drm_device* FUNC0 (struct pci_dev*) ; 
 int FUNC1 (struct drm_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct qxl_device*) ; 
 struct pci_dev* FUNC3 (struct device*) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	struct pci_dev *pdev = FUNC3(dev);
	struct drm_device *drm_dev = FUNC0(pdev);
	struct qxl_device *qdev = drm_dev->dev_private;

	FUNC2(qdev);
	return FUNC1(drm_dev, false);
}
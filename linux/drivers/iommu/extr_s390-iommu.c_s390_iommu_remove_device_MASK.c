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
struct zpci_dev {int /*<<< orphan*/  iommu_dev; scalar_t__ s390_domain; } ;
struct iommu_domain {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct zpci_dev* sysdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct device*) ; 
 struct iommu_domain* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct iommu_domain*,struct device*) ; 
 TYPE_1__* FUNC4 (struct device*) ; 

__attribute__((used)) static void FUNC5(struct device *dev)
{
	struct zpci_dev *zdev = FUNC4(dev)->sysdata;
	struct iommu_domain *domain;

	/*
	 * This is a workaround for a scenario where the IOMMU API common code
	 * "forgets" to call the detach_dev callback: After binding a device
	 * to vfio-pci and completing the VFIO_SET_IOMMU ioctl (which triggers
	 * the attach_dev), removing the device via
	 * "echo 1 > /sys/bus/pci/devices/.../remove" won't trigger detach_dev,
	 * only remove_device will be called via the BUS_NOTIFY_REMOVED_DEVICE
	 * notifier.
	 *
	 * So let's call detach_dev from here if it hasn't been called before.
	 */
	if (zdev && zdev->s390_domain) {
		domain = FUNC1(dev);
		if (domain)
			FUNC3(domain, dev);
	}

	FUNC0(&zdev->iommu_dev, dev);
	FUNC2(dev);
}
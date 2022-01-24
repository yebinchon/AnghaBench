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
struct zpci_dev {int /*<<< orphan*/  iommu_dev; } ;
struct iommu_group {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct zpci_dev* sysdata; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct iommu_group*) ; 
 int FUNC1 (struct iommu_group*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct device*) ; 
 struct iommu_group* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct iommu_group*) ; 
 TYPE_1__* FUNC5 (struct device*) ; 

__attribute__((used)) static int FUNC6(struct device *dev)
{
	struct iommu_group *group = FUNC3(dev);
	struct zpci_dev *zdev = FUNC5(dev)->sysdata;

	if (FUNC0(group))
		return FUNC1(group);

	FUNC4(group);
	FUNC2(&zdev->iommu_dev, dev);

	return 0;
}
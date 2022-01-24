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
struct iommu_fwspec {int /*<<< orphan*/  iommu_fwnode; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct iommu_fwspec* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iommu_fwspec*) ; 

void FUNC4(struct device *dev)
{
	struct iommu_fwspec *fwspec = FUNC0(dev);

	if (fwspec) {
		FUNC2(fwspec->iommu_fwnode);
		FUNC3(fwspec);
		FUNC1(dev, NULL);
	}
}
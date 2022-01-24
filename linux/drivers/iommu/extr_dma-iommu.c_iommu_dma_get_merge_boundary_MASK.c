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
struct iommu_domain {int /*<<< orphan*/  pgsize_bitmap; } ;
struct device {int dummy; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 struct iommu_domain* FUNC1 (struct device*) ; 

__attribute__((used)) static unsigned long FUNC2(struct device *dev)
{
	struct iommu_domain *domain = FUNC1(dev);

	return (1UL << FUNC0(domain->pgsize_bitmap)) - 1;
}
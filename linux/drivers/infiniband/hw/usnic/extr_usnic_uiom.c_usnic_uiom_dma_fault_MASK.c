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
struct iommu_domain {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOSYS ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,struct iommu_domain*,unsigned long,int) ; 

__attribute__((used)) static int FUNC2(struct iommu_domain *domain,
				struct device *dev,
				unsigned long iova, int flags,
				void *token)
{
	FUNC1("Device %s iommu fault domain 0x%pK va 0x%lx flags 0x%x\n",
		FUNC0(dev),
		domain, iova, flags);
	return -ENOSYS;
}
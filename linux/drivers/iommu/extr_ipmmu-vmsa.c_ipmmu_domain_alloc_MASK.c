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

/* Variables and functions */
#define  IOMMU_DOMAIN_DMA 129 
#define  IOMMU_DOMAIN_UNMANAGED 128 
 struct iommu_domain* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct iommu_domain*) ; 
 int /*<<< orphan*/  FUNC2 (struct iommu_domain*) ; 

__attribute__((used)) static struct iommu_domain *FUNC3(unsigned type)
{
	struct iommu_domain *io_domain = NULL;

	switch (type) {
	case IOMMU_DOMAIN_UNMANAGED:
		io_domain = FUNC0(type);
		break;

	case IOMMU_DOMAIN_DMA:
		io_domain = FUNC0(type);
		if (io_domain && FUNC1(io_domain)) {
			FUNC2(io_domain);
			io_domain = NULL;
		}
		break;
	}

	return io_domain;
}
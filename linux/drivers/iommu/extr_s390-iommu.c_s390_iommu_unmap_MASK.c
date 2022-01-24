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
struct s390_domain {int dummy; } ;
struct iommu_iotlb_gather {int dummy; } ;
struct iommu_domain {int dummy; } ;
typedef  scalar_t__ phys_addr_t ;

/* Variables and functions */
 int ZPCI_PTE_INVALID ; 
 scalar_t__ FUNC0 (struct iommu_domain*,unsigned long) ; 
 int FUNC1 (struct s390_domain*,unsigned long,unsigned long,size_t,int) ; 
 struct s390_domain* FUNC2 (struct iommu_domain*) ; 

__attribute__((used)) static size_t FUNC3(struct iommu_domain *domain,
			       unsigned long iova, size_t size,
			       struct iommu_iotlb_gather *gather)
{
	struct s390_domain *s390_domain = FUNC2(domain);
	int flags = ZPCI_PTE_INVALID;
	phys_addr_t paddr;
	int rc;

	paddr = FUNC0(domain, iova);
	if (!paddr)
		return 0;

	rc = FUNC1(s390_domain, (unsigned long) paddr, iova,
				     size, flags);
	if (rc)
		return 0;

	return size;
}
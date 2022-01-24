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
struct iommu_ops {size_t (* unmap ) (struct iommu_domain*,unsigned long,size_t,struct iommu_iotlb_gather*) ;} ;
struct iommu_iotlb_gather {int dummy; } ;
struct iommu_domain {unsigned long pgsize_bitmap; int type; struct iommu_ops* ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned int) ; 
 int __IOMMU_DOMAIN_PAGING ; 
 int FUNC1 (unsigned long) ; 
 size_t FUNC2 (struct iommu_domain*,unsigned long,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned long,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned long,size_t,unsigned int) ; 
 size_t FUNC5 (struct iommu_domain*,unsigned long,size_t,struct iommu_iotlb_gather*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long,size_t,size_t) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static size_t FUNC8(struct iommu_domain *domain,
			    unsigned long iova, size_t size,
			    struct iommu_iotlb_gather *iotlb_gather)
{
	const struct iommu_ops *ops = domain->ops;
	size_t unmapped_page, unmapped = 0;
	unsigned long orig_iova = iova;
	unsigned int min_pagesz;

	if (FUNC7(ops->unmap == NULL ||
		     domain->pgsize_bitmap == 0UL))
		return 0;

	if (FUNC7(!(domain->type & __IOMMU_DOMAIN_PAGING)))
		return 0;

	/* find out the minimum page size supported */
	min_pagesz = 1 << FUNC1(domain->pgsize_bitmap);

	/*
	 * The virtual address, as well as the size of the mapping, must be
	 * aligned (at least) to the size of the smallest page supported
	 * by the hardware
	 */
	if (!FUNC0(iova | size, min_pagesz)) {
		FUNC4("unaligned: iova 0x%lx size 0x%zx min_pagesz 0x%x\n",
		       iova, size, min_pagesz);
		return 0;
	}

	FUNC3("unmap this: iova 0x%lx size 0x%zx\n", iova, size);

	/*
	 * Keep iterating until we either unmap 'size' bytes (or more)
	 * or we hit an area that isn't mapped.
	 */
	while (unmapped < size) {
		size_t pgsize = FUNC2(domain, iova, size - unmapped);

		unmapped_page = ops->unmap(domain, iova, pgsize, iotlb_gather);
		if (!unmapped_page)
			break;

		FUNC3("unmapped: iova 0x%lx size 0x%zx\n",
			 iova, unmapped_page);

		iova += unmapped_page;
		unmapped += unmapped_page;
	}

	FUNC6(orig_iova, size, unmapped);
	return unmapped;
}
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
struct scatterlist {size_t length; } ;
struct iommu_domain {int dummy; } ;
typedef  scalar_t__ phys_addr_t ;

/* Variables and functions */
 int FUNC0 (struct iommu_domain*,unsigned long,scalar_t__,size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (struct iommu_domain*,unsigned long,size_t) ; 
 struct scatterlist* FUNC2 (struct scatterlist*) ; 
 scalar_t__ FUNC3 (struct scatterlist*) ; 

size_t FUNC4(struct iommu_domain *domain, unsigned long iova,
		    struct scatterlist *sg, unsigned int nents, int prot)
{
	size_t len = 0, mapped = 0;
	phys_addr_t start;
	unsigned int i = 0;
	int ret;

	while (i <= nents) {
		phys_addr_t s_phys = FUNC3(sg);

		if (len && s_phys != start + len) {
			ret = FUNC0(domain, iova + mapped, start, len, prot);
			if (ret)
				goto out_err;

			mapped += len;
			len = 0;
		}

		if (len) {
			len += sg->length;
		} else {
			len = sg->length;
			start = s_phys;
		}

		if (++i < nents)
			sg = FUNC2(sg);
	}

	return mapped;

out_err:
	/* undo mappings already done */
	FUNC1(domain, iova, mapped);

	return 0;

}
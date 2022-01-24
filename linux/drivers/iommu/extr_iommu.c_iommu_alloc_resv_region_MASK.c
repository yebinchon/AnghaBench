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
struct iommu_resv_region {size_t length; int prot; int type; int /*<<< orphan*/  start; int /*<<< orphan*/  list; } ;
typedef  int /*<<< orphan*/  phys_addr_t ;
typedef  enum iommu_resv_type { ____Placeholder_iommu_resv_type } iommu_resv_type ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct iommu_resv_region* FUNC1 (int,int /*<<< orphan*/ ) ; 

struct iommu_resv_region *FUNC2(phys_addr_t start,
						  size_t length, int prot,
						  enum iommu_resv_type type)
{
	struct iommu_resv_region *region;

	region = FUNC1(sizeof(*region), GFP_KERNEL);
	if (!region)
		return NULL;

	FUNC0(&region->list);
	region->start = start;
	region->length = length;
	region->prot = prot;
	region->type = type;
	return region;
}
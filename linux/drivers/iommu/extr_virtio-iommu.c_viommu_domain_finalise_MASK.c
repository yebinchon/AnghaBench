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
struct viommu_domain {unsigned int id; int /*<<< orphan*/  map_flags; struct viommu_dev* viommu; } ;
struct viommu_dev {int /*<<< orphan*/  last_domain; int /*<<< orphan*/  first_domain; int /*<<< orphan*/  domain_ids; int /*<<< orphan*/  geometry; int /*<<< orphan*/  pgsize_bitmap; int /*<<< orphan*/  map_flags; } ;
struct iommu_domain {int /*<<< orphan*/  geometry; int /*<<< orphan*/  pgsize_bitmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct viommu_domain* FUNC1 (struct iommu_domain*) ; 

__attribute__((used)) static int FUNC2(struct viommu_dev *viommu,
				  struct iommu_domain *domain)
{
	int ret;
	struct viommu_domain *vdomain = FUNC1(domain);

	vdomain->viommu		= viommu;
	vdomain->map_flags	= viommu->map_flags;

	domain->pgsize_bitmap	= viommu->pgsize_bitmap;
	domain->geometry	= viommu->geometry;

	ret = FUNC0(&viommu->domain_ids, viommu->first_domain,
			      viommu->last_domain, GFP_KERNEL);
	if (ret >= 0)
		vdomain->id = (unsigned int)ret;

	return ret > 0 ? 0 : ret;
}
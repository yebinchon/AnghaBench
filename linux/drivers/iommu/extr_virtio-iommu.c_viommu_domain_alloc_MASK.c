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
struct viommu_domain {struct iommu_domain domain; int /*<<< orphan*/  mappings; int /*<<< orphan*/  mappings_lock; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int IOMMU_DOMAIN_DMA ; 
 unsigned int IOMMU_DOMAIN_UNMANAGED ; 
 int /*<<< orphan*/  RB_ROOT_CACHED ; 
 scalar_t__ FUNC0 (struct iommu_domain*) ; 
 int /*<<< orphan*/  FUNC1 (struct viommu_domain*) ; 
 struct viommu_domain* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct iommu_domain *FUNC5(unsigned type)
{
	struct viommu_domain *vdomain;

	if (type != IOMMU_DOMAIN_UNMANAGED && type != IOMMU_DOMAIN_DMA)
		return NULL;

	vdomain = FUNC2(sizeof(*vdomain), GFP_KERNEL);
	if (!vdomain)
		return NULL;

	FUNC3(&vdomain->mutex);
	FUNC4(&vdomain->mappings_lock);
	vdomain->mappings = RB_ROOT_CACHED;

	if (type == IOMMU_DOMAIN_DMA &&
	    FUNC0(&vdomain->domain)) {
		FUNC1(vdomain);
		return NULL;
	}

	return &vdomain->domain;
}
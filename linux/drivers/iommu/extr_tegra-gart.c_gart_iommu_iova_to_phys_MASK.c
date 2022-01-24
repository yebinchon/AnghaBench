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
struct gart_device {int /*<<< orphan*/  pte_lock; } ;
typedef  unsigned long phys_addr_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 unsigned long EINVAL ; 
 unsigned long GART_PAGE_MASK ; 
 int /*<<< orphan*/  GART_PAGE_SIZE ; 
 struct gart_device* gart_handle ; 
 scalar_t__ FUNC0 (struct gart_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (struct gart_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static phys_addr_t FUNC4(struct iommu_domain *domain,
					   dma_addr_t iova)
{
	struct gart_device *gart = gart_handle;
	unsigned long pte;

	if (FUNC0(gart, iova, GART_PAGE_SIZE))
		return -EINVAL;

	FUNC2(&gart->pte_lock);
	pte = FUNC1(gart, iova);
	FUNC3(&gart->pte_lock);

	return pte & GART_PAGE_MASK;
}
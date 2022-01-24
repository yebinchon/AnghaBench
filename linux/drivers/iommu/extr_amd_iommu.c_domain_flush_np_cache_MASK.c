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
struct protection_domain {int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  amd_iommu_np_cache ; 
 int /*<<< orphan*/  FUNC0 (struct protection_domain*) ; 
 int /*<<< orphan*/  FUNC1 (struct protection_domain*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct protection_domain *domain,
		dma_addr_t iova, size_t size)
{
	if (FUNC4(amd_iommu_np_cache)) {
		unsigned long flags;

		FUNC2(&domain->lock, flags);
		FUNC1(domain, iova, size);
		FUNC0(domain);
		FUNC3(&domain->lock, flags);
	}
}
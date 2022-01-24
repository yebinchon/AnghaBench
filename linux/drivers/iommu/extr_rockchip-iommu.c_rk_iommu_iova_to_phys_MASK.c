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
typedef  int /*<<< orphan*/  u32 ;
struct rk_iommu_domain {int /*<<< orphan*/  dt_lock; int /*<<< orphan*/ * dt; } ;
struct iommu_domain {int dummy; } ;
typedef  scalar_t__ phys_addr_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 struct rk_iommu_domain* FUNC10 (struct iommu_domain*) ; 

__attribute__((used)) static phys_addr_t FUNC11(struct iommu_domain *domain,
					 dma_addr_t iova)
{
	struct rk_iommu_domain *rk_domain = FUNC10(domain);
	unsigned long flags;
	phys_addr_t pt_phys, phys = 0;
	u32 dte, pte;
	u32 *page_table;

	FUNC8(&rk_domain->dt_lock, flags);

	dte = rk_domain->dt[FUNC3(iova)];
	if (!FUNC1(dte))
		goto out;

	pt_phys = FUNC2(dte);
	page_table = (u32 *)FUNC0(pt_phys);
	pte = page_table[FUNC5(iova)];
	if (!FUNC6(pte))
		goto out;

	phys = FUNC7(pte) + FUNC4(iova);
out:
	FUNC9(&rk_domain->dt_lock, flags);

	return phys;
}
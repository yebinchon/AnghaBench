#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct s390_domain {unsigned long* dma_table; int /*<<< orphan*/  dma_table_lock; } ;
struct TYPE_2__ {scalar_t__ aperture_start; scalar_t__ aperture_end; } ;
struct iommu_domain {TYPE_1__ geometry; } ;
typedef  unsigned long phys_addr_t ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 unsigned long ZPCI_PTE_ADDR_MASK ; 
 unsigned int FUNC0 (scalar_t__) ; 
 unsigned int FUNC1 (scalar_t__) ; 
 unsigned int FUNC2 (scalar_t__) ; 
 unsigned long* FUNC3 (unsigned long) ; 
 unsigned long* FUNC4 (unsigned long) ; 
 scalar_t__ FUNC5 (unsigned long) ; 
 scalar_t__ FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 struct s390_domain* FUNC9 (struct iommu_domain*) ; 

__attribute__((used)) static phys_addr_t FUNC10(struct iommu_domain *domain,
					   dma_addr_t iova)
{
	struct s390_domain *s390_domain = FUNC9(domain);
	unsigned long *sto, *pto, *rto, flags;
	unsigned int rtx, sx, px;
	phys_addr_t phys = 0;

	if (iova < domain->geometry.aperture_start ||
	    iova > domain->geometry.aperture_end)
		return 0;

	rtx = FUNC1(iova);
	sx = FUNC2(iova);
	px = FUNC0(iova);
	rto = s390_domain->dma_table;

	FUNC7(&s390_domain->dma_table_lock, flags);
	if (rto && FUNC6(rto[rtx])) {
		sto = FUNC3(rto[rtx]);
		if (sto && FUNC6(sto[sx])) {
			pto = FUNC4(sto[sx]);
			if (pto && FUNC5(pto[px]))
				phys = pto[px] & ZPCI_PTE_ADDR_MASK;
		}
	}
	FUNC8(&s390_domain->dma_table_lock, flags);

	return phys;
}
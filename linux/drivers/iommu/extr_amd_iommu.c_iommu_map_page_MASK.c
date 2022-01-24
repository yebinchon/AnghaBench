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
typedef  int u64 ;
struct protection_domain {int /*<<< orphan*/  lock; } ;
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int IOMMU_PROT_IR ; 
 int IOMMU_PROT_IW ; 
 int IOMMU_PROT_MASK ; 
 int IOMMU_PTE_FC ; 
 int IOMMU_PTE_IR ; 
 int IOMMU_PTE_IW ; 
 int IOMMU_PTE_PR ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long) ; 
 int FUNC2 (int,unsigned long) ; 
 int FUNC3 (unsigned long) ; 
 int FUNC4 (int) ; 
 int FUNC5 (unsigned long) ; 
 int* FUNC6 (struct protection_domain*,unsigned long,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 struct page* FUNC7 (int*,int,struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (struct protection_domain*) ; 

__attribute__((used)) static int FUNC12(struct protection_domain *dom,
			  unsigned long bus_addr,
			  unsigned long phys_addr,
			  unsigned long page_size,
			  int prot,
			  gfp_t gfp)
{
	struct page *freelist = NULL;
	bool updated = false;
	u64 __pte, *pte;
	int ret, i, count;

	FUNC0(!FUNC1(bus_addr, page_size));
	FUNC0(!FUNC1(phys_addr, page_size));

	ret = -EINVAL;
	if (!(prot & IOMMU_PROT_MASK))
		goto out;

	count = FUNC3(page_size);
	pte   = FUNC6(dom, bus_addr, page_size, NULL, gfp, &updated);

	ret = -ENOMEM;
	if (!pte)
		goto out;

	for (i = 0; i < count; ++i)
		freelist = FUNC7(&pte[i], pte[i], freelist);

	if (freelist != NULL)
		updated = true;

	if (count > 1) {
		__pte = FUNC2(FUNC5(phys_addr), page_size);
		__pte |= FUNC4(7) | IOMMU_PTE_PR | IOMMU_PTE_FC;
	} else
		__pte = FUNC5(phys_addr) | IOMMU_PTE_PR | IOMMU_PTE_FC;

	if (prot & IOMMU_PROT_IR)
		__pte |= IOMMU_PTE_IR;
	if (prot & IOMMU_PROT_IW)
		__pte |= IOMMU_PTE_IW;

	for (i = 0; i < count; ++i)
		pte[i] = __pte;

	ret = 0;

out:
	if (updated) {
		unsigned long flags;

		FUNC9(&dom->lock, flags);
		FUNC11(dom);
		FUNC10(&dom->lock, flags);
	}

	/* Everything flushed out, free pages now */
	FUNC8(freelist);

	return ret;
}
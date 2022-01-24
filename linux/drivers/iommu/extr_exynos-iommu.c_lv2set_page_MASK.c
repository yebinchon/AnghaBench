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
typedef  int /*<<< orphan*/  sysmmu_pte_t ;
typedef  int /*<<< orphan*/  phys_addr_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int EADDRINUSE ; 
 int SPAGES_PER_LPAGE ; 
 size_t SPAGE_SIZE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  dma_dev ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(sysmmu_pte_t *pent, phys_addr_t paddr, size_t size,
		       int prot, short *pgcnt)
{
	if (size == SPAGE_SIZE) {
		if (FUNC0(!FUNC3(pent)))
			return -EADDRINUSE;

		FUNC7(pent, FUNC6(paddr, prot));
		*pgcnt -= 1;
	} else { /* size == LPAGE_SIZE */
		int i;
		dma_addr_t pent_base = FUNC8(pent);

		FUNC1(dma_dev, pent_base,
					sizeof(*pent) * SPAGES_PER_LPAGE,
					DMA_TO_DEVICE);
		for (i = 0; i < SPAGES_PER_LPAGE; i++, pent++) {
			if (FUNC0(!FUNC3(pent))) {
				if (i > 0)
					FUNC4(pent - i, 0, sizeof(*pent) * i);
				return -EADDRINUSE;
			}

			*pent = FUNC5(paddr, prot);
		}
		FUNC2(dma_dev, pent_base,
					   sizeof(*pent) * SPAGES_PER_LPAGE,
					   DMA_TO_DEVICE);
		*pgcnt -= SPAGES_PER_LPAGE;
	}

	return 0;
}
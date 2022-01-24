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
typedef  void* uint32_t ;
struct psb_mmu_pt {int dummy; } ;
struct psb_mmu_pd {int hw_context; void* p; void* dummy_pt; void* dummy_page; struct psb_mmu_driver* driver; int /*<<< orphan*/  pd_mask; int /*<<< orphan*/  tables; void* invalid_pde; void* invalid_pte; } ;
struct psb_mmu_driver {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_DMA32 ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  PSB_PTE_VALID ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void**) ; 
 int /*<<< orphan*/  FUNC3 (struct psb_mmu_pd*) ; 
 struct psb_mmu_pd* FUNC4 (int,int /*<<< orphan*/ ) ; 
 void** FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 void* FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

struct psb_mmu_pd *FUNC10(struct psb_mmu_driver *driver,
				    int trap_pagefaults, int invalid_type)
{
	struct psb_mmu_pd *pd = FUNC4(sizeof(*pd), GFP_KERNEL);
	uint32_t *v;
	int i;

	if (!pd)
		return NULL;

	pd->p = FUNC1(GFP_DMA32);
	if (!pd->p)
		goto out_err1;
	pd->dummy_pt = FUNC1(GFP_DMA32);
	if (!pd->dummy_pt)
		goto out_err2;
	pd->dummy_page = FUNC1(GFP_DMA32);
	if (!pd->dummy_page)
		goto out_err3;

	if (!trap_pagefaults) {
		pd->invalid_pde = FUNC8(FUNC7(pd->dummy_pt),
						   invalid_type);
		pd->invalid_pte = FUNC8(FUNC7(pd->dummy_page),
						   invalid_type);
	} else {
		pd->invalid_pde = 0;
		pd->invalid_pte = 0;
	}

	v = FUNC5(pd->dummy_pt);
	for (i = 0; i < (PAGE_SIZE / sizeof(uint32_t)); ++i)
		v[i] = pd->invalid_pte;

	FUNC6(pd->dummy_pt);

	v = FUNC5(pd->p);
	for (i = 0; i < (PAGE_SIZE / sizeof(uint32_t)); ++i)
		v[i] = pd->invalid_pde;

	FUNC6(pd->p);

	FUNC2(FUNC5(pd->dummy_page));
	FUNC6(pd->dummy_page);

	pd->tables = FUNC9(sizeof(struct psb_mmu_pt *) * 1024);
	if (!pd->tables)
		goto out_err4;

	pd->hw_context = -1;
	pd->pd_mask = PSB_PTE_VALID;
	pd->driver = driver;

	return pd;

out_err4:
	FUNC0(pd->dummy_page);
out_err3:
	FUNC0(pd->dummy_pt);
out_err2:
	FUNC0(pd->p);
out_err1:
	FUNC3(pd);
	return NULL;
}
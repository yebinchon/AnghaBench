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
struct TYPE_2__ {void* pt_root; int /*<<< orphan*/  flags; int /*<<< orphan*/  mode; } ;
struct dma_ops_domain {int /*<<< orphan*/  iovad; TYPE_1__ domain; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IOVA_START_PFN ; 
 int /*<<< orphan*/  PAGE_MODE_3_LEVEL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  PD_DMA_OPS_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_ops_domain*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  iova_domain_flush_tlb ; 
 struct dma_ops_domain* FUNC5 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  reserved_iova_ranges ; 

__attribute__((used)) static struct dma_ops_domain *FUNC7(void)
{
	struct dma_ops_domain *dma_dom;

	dma_dom = FUNC5(sizeof(struct dma_ops_domain), GFP_KERNEL);
	if (!dma_dom)
		return NULL;

	if (FUNC6(&dma_dom->domain))
		goto free_dma_dom;

	dma_dom->domain.mode = PAGE_MODE_3_LEVEL;
	dma_dom->domain.pt_root = (void *)FUNC2(GFP_KERNEL);
	dma_dom->domain.flags = PD_DMA_OPS_MASK;
	if (!dma_dom->domain.pt_root)
		goto free_dma_dom;

	FUNC3(&dma_dom->iovad, PAGE_SIZE, IOVA_START_PFN);

	if (FUNC4(&dma_dom->iovad, iova_domain_flush_tlb, NULL))
		goto free_dma_dom;

	/* Initialize reserved ranges */
	FUNC0(&reserved_iova_ranges, &dma_dom->iovad);

	return dma_dom;

free_dma_dom:
	FUNC1(dma_dom);

	return NULL;
}
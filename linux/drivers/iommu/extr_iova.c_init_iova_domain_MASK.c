#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  rb_node; } ;
struct TYPE_4__ {int /*<<< orphan*/  node; int /*<<< orphan*/  pfn_hi; int /*<<< orphan*/  pfn_lo; } ;
struct iova_domain {unsigned long granule; unsigned long start_pfn; unsigned long dma_32bit_pfn; unsigned long max32_alloc_size; TYPE_2__ rbroot; TYPE_1__ anchor; int /*<<< orphan*/ * fq; int /*<<< orphan*/ * flush_cb; int /*<<< orphan*/ * cached32_node; int /*<<< orphan*/ * cached_node; int /*<<< orphan*/  iova_rbtree_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  IOVA_ANCHOR ; 
 unsigned long PAGE_SIZE ; 
 TYPE_2__ RB_ROOT ; 
 int /*<<< orphan*/  FUNC1 (struct iova_domain*) ; 
 int FUNC2 (struct iova_domain*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7(struct iova_domain *iovad, unsigned long granule,
	unsigned long start_pfn)
{
	/*
	 * IOVA granularity will normally be equal to the smallest
	 * supported IOMMU page size; both *must* be capable of
	 * representing individual CPU pages exactly.
	 */
	FUNC0((granule > PAGE_SIZE) || !FUNC3(granule));

	FUNC6(&iovad->iova_rbtree_lock);
	iovad->rbroot = RB_ROOT;
	iovad->cached_node = &iovad->anchor.node;
	iovad->cached32_node = &iovad->anchor.node;
	iovad->granule = granule;
	iovad->start_pfn = start_pfn;
	iovad->dma_32bit_pfn = 1UL << (32 - FUNC2(iovad));
	iovad->max32_alloc_size = iovad->dma_32bit_pfn;
	iovad->flush_cb = NULL;
	iovad->fq = NULL;
	iovad->anchor.pfn_lo = iovad->anchor.pfn_hi = IOVA_ANCHOR;
	FUNC5(&iovad->anchor.node, NULL, &iovad->rbroot.rb_node);
	FUNC4(&iovad->anchor.node, &iovad->rbroot);
	FUNC1(iovad);
}
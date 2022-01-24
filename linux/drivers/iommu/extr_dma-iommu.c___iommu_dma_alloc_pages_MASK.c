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
struct page {int dummy; } ;
struct device {int dummy; } ;
typedef  int gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int MAX_ORDER ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int __GFP_HIGHMEM ; 
 int __GFP_NORETRY ; 
 int __GFP_NOWARN ; 
 unsigned int FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct page*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct page**,unsigned int) ; 
 struct page* FUNC4 (unsigned int,int,unsigned int) ; 
 unsigned int FUNC5 (struct device*) ; 
 struct page** FUNC6 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*,unsigned int) ; 

__attribute__((used)) static struct page **FUNC9(struct device *dev,
		unsigned int count, unsigned long order_mask, gfp_t gfp)
{
	struct page **pages;
	unsigned int i = 0, nid = FUNC5(dev);

	order_mask &= (2U << MAX_ORDER) - 1;
	if (!order_mask)
		return NULL;

	pages = FUNC6(count * sizeof(*pages), GFP_KERNEL);
	if (!pages)
		return NULL;

	/* IOMMU can map any pages, so himem can also be used here */
	gfp |= __GFP_NOWARN | __GFP_HIGHMEM;

	while (count) {
		struct page *page = NULL;
		unsigned int order_size;

		/*
		 * Higher-order allocations are a convenience rather
		 * than a necessity, hence using __GFP_NORETRY until
		 * falling back to minimum-order allocations.
		 */
		for (order_mask &= (2U << FUNC1(count)) - 1;
		     order_mask; order_mask &= ~order_size) {
			unsigned int order = FUNC1(order_mask);
			gfp_t alloc_flags = gfp;

			order_size = 1U << order;
			if (order_mask > order_size)
				alloc_flags |= __GFP_NORETRY;
			page = FUNC4(nid, alloc_flags, order);
			if (!page)
				continue;
			if (!order)
				break;
			if (!FUNC0(page)) {
				FUNC8(page, order);
				break;
			} else if (!FUNC7(page)) {
				break;
			}
			FUNC2(page, order);
		}
		if (!page) {
			FUNC3(pages, i);
			return NULL;
		}
		count -= order_size;
		while (order_size--)
			pages[i++] = page++;
	}
	return pages;
}
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
struct page {int /*<<< orphan*/  lru; } ;
struct list_head {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  enum ttm_caching_state { ____Placeholder_ttm_caching_state } ttm_caching_state ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ NUM_PAGES_TO_ALLOC ; 
 scalar_t__ FUNC0 (struct page*) ; 
 struct page* FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct page**) ; 
 struct page** FUNC3 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct list_head*) ; 
 unsigned int FUNC5 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct list_head*,int,int,struct page**,unsigned int) ; 
 int FUNC8 (struct page**,int,unsigned int) ; 

__attribute__((used)) static int FUNC9(struct list_head *pages, gfp_t gfp_flags,
			       int ttm_flags, enum ttm_caching_state cstate,
			       unsigned count, unsigned order)
{
	struct page **caching_array;
	struct page *p;
	int r = 0;
	unsigned i, j, cpages;
	unsigned npages = 1 << order;
	unsigned max_cpages = FUNC5(count << order, (unsigned)NUM_PAGES_TO_ALLOC);

	/* allocate array for page caching change */
	caching_array = FUNC3(max_cpages, sizeof(struct page *),
				      GFP_KERNEL);

	if (!caching_array) {
		FUNC6("Unable to allocate table for new pages\n");
		return -ENOMEM;
	}

	for (i = 0, cpages = 0; i < count; ++i) {
		p = FUNC1(gfp_flags, order);

		if (!p) {
			FUNC6("Unable to get page %u\n", i);

			/* store already allocated pages in the pool after
			 * setting the caching state */
			if (cpages) {
				r = FUNC8(caching_array,
							  cstate, cpages);
				if (r)
					FUNC7(pages,
						ttm_flags, cstate,
						caching_array, cpages);
			}
			r = -ENOMEM;
			goto out;
		}

		FUNC4(&p->lru, pages);

#ifdef CONFIG_HIGHMEM
		/* gfp flags of highmem page should never be dma32 so we
		 * we should be fine in such case
		 */
		if (PageHighMem(p))
			continue;

#endif
		for (j = 0; j < npages; ++j) {
			caching_array[cpages++] = p++;
			if (cpages == max_cpages) {

				r = FUNC8(caching_array,
						cstate, cpages);
				if (r) {
					FUNC7(pages,
						ttm_flags, cstate,
						caching_array, cpages);
					goto out;
				}
				cpages = 0;
			}
		}
	}

	if (cpages) {
		r = FUNC8(caching_array, cstate, cpages);
		if (r)
			FUNC7(pages,
					ttm_flags, cstate,
					caching_array, cpages);
	}
out:
	FUNC2(caching_array);

	return r;
}
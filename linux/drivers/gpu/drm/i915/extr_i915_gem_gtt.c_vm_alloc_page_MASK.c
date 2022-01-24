#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pagevec {size_t nr; struct page** pages; } ;
struct page {int dummy; } ;
struct i915_address_space {int /*<<< orphan*/  free_pages; TYPE_2__* i915; int /*<<< orphan*/  pt_kmap_wc; int /*<<< orphan*/  fault_attr; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_3__ {int /*<<< orphan*/  wc_stash; } ;
struct TYPE_4__ {TYPE_1__ mm; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pagevec*) ; 
 struct page* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct pagevec*) ; 
 scalar_t__ FUNC6 (struct pagevec*) ; 
 int /*<<< orphan*/  FUNC7 (struct page**,int) ; 
 int /*<<< orphan*/  FUNC8 (struct page**,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 struct page* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct pagevec*) ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static struct page *FUNC13(struct i915_address_space *vm, gfp_t gfp)
{
	struct pagevec stack;
	struct page *page;

	if (FUNC0(FUNC9(&vm->fault_attr, 1)))
		FUNC4(vm->i915);

	page = FUNC10(&vm->free_pages);
	if (page)
		return page;

	if (!vm->pt_kmap_wc)
		return FUNC3(gfp);

	/* Look in our global stash of WC pages... */
	page = FUNC10(&vm->i915->mm.wc_stash);
	if (page)
		return page;

	/*
	 * Otherwise batch allocate pages to amortize cost of set_pages_wc.
	 *
	 * We have to be careful as page allocation may trigger the shrinker
	 * (via direct reclaim) which will fill up the WC stash underneath us.
	 * So we add our WB pages into a temporary pvec on the stack and merge
	 * them into the WC stash after all the allocations are complete.
	 */
	FUNC5(&stack);
	do {
		struct page *page;

		page = FUNC3(gfp);
		if (FUNC12(!page))
			break;

		stack.pages[stack.nr++] = page;
	} while (FUNC6(&stack));

	if (stack.nr && !FUNC8(stack.pages, stack.nr)) {
		page = stack.pages[--stack.nr];

		/* Merge spare WC pages to the global stash */
		if (stack.nr)
			FUNC11(&vm->i915->mm.wc_stash, &stack);

		/* Push any surplus WC pages onto the local VM stash */
		if (stack.nr)
			FUNC11(&vm->free_pages, &stack);
	}

	/* Return unwanted leftovers */
	if (FUNC12(stack.nr)) {
		FUNC1(FUNC7(stack.pages, stack.nr));
		FUNC2(&stack);
	}

	return page;
}
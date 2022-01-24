#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pagevec {int nr; int /*<<< orphan*/  pages; } ;
struct TYPE_6__ {int /*<<< orphan*/  lock; struct pagevec pvec; } ;
struct i915_address_space {TYPE_3__ free_pages; TYPE_2__* i915; scalar_t__ pt_kmap_wc; } ;
struct TYPE_4__ {int /*<<< orphan*/  wc_stash; } ;
struct TYPE_5__ {TYPE_1__ mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PAGEVEC_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct pagevec*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct pagevec*) ; 
 int /*<<< orphan*/  FUNC4 (struct pagevec*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct pagevec*) ; 

__attribute__((used)) static void FUNC9(struct i915_address_space *vm,
				  bool immediate)
{
	struct pagevec *pvec = &vm->free_pages.pvec;
	struct pagevec stack;

	FUNC2(&vm->free_pages.lock);
	FUNC0(!FUNC3(pvec));

	if (vm->pt_kmap_wc) {
		/*
		 * When we use WC, first fill up the global stash and then
		 * only if full immediately free the overflow.
		 */
		FUNC8(&vm->i915->mm.wc_stash, pvec);

		/*
		 * As we have made some room in the VM's free_pages,
		 * we can wait for it to fill again. Unless we are
		 * inside i915_address_space_fini() and must
		 * immediately release the pages!
		 */
		if (pvec->nr <= (immediate ? 0 : PAGEVEC_SIZE - 1))
			return;

		/*
		 * We have to drop the lock to allow ourselves to sleep,
		 * so take a copy of the pvec and clear the stash for
		 * others to use it as we sleep.
		 */
		stack = *pvec;
		FUNC4(pvec);
		FUNC7(&vm->free_pages.lock);

		pvec = &stack;
		FUNC5(pvec->pages, pvec->nr);

		FUNC6(&vm->free_pages.lock);
	}

	FUNC1(pvec);
}
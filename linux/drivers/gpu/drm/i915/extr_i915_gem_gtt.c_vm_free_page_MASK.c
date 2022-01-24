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
struct page {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  pvec; } ;
struct i915_address_space {TYPE_1__ free_pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ PAGEVEC_SIZE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct page*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct i915_address_space*,int) ; 

__attribute__((used)) static void FUNC8(struct i915_address_space *vm, struct page *page)
{
	/*
	 * On !llc, we need to change the pages back to WB. We only do so
	 * in bulk, so we rarely need to change the page attributes here,
	 * but doing so requires a stop_machine() from deep inside arch/x86/mm.
	 * To make detection of the possible sleep more likely, use an
	 * unconditional might_sleep() for everybody.
	 */
	FUNC1();
	FUNC5(&vm->free_pages.lock);
	while (!FUNC4(&vm->free_pages.pvec))
		FUNC7(vm, false);
	FUNC0(FUNC3(&vm->free_pages.pvec) >= PAGEVEC_SIZE);
	FUNC2(&vm->free_pages.pvec, page);
	FUNC6(&vm->free_pages.lock);
}
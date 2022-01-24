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
struct TYPE_2__ {size_t nr; struct page** pages; } ;
struct pagestash {int /*<<< orphan*/  lock; TYPE_1__ pvec; } ;
struct page {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct page *FUNC3(struct pagestash *stash)
{
	struct page *page = NULL;

	FUNC1(&stash->lock);
	if (FUNC0(stash->pvec.nr))
		page = stash->pvec.pages[--stash->pvec.nr];
	FUNC2(&stash->lock);

	return page;
}
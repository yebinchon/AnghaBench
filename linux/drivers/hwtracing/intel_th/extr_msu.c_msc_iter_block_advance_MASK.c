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
struct msc_iter {scalar_t__ block; scalar_t__ start_block; scalar_t__ wrap_count; int /*<<< orphan*/  win; scalar_t__ block_off; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct msc_iter*) ; 
 int FUNC2 (struct msc_iter*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct msc_iter *iter)
{
	iter->block_off = 0;

	/* wrapping */
	if (iter->wrap_count && iter->block == iter->start_block) {
		iter->wrap_count--;
		if (!iter->wrap_count)
			/* copied newest data from the wrapped block */
			return FUNC2(iter);
	}

	/* no wrapping, check for last written block */
	if (!iter->wrap_count && FUNC0(FUNC1(iter)))
		/* copied newest data for the window */
		return FUNC2(iter);

	/* block advance */
	if (FUNC4(iter->block))
		iter->block = FUNC3(iter->win);
	else
		iter->block = FUNC5(iter->block);

	/* no wrapping, sanity check in case there is no last written block */
	if (!iter->wrap_count && iter->block == iter->start_block)
		return FUNC2(iter);

	return 0;
}
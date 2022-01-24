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
struct msc {scalar_t__ mode; int /*<<< orphan*/  user_count; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENOTSUPP ; 
 scalar_t__ MSC_MODE_MULTI ; 
 scalar_t__ MSC_MODE_SINGLE ; 
 unsigned long PAGE_SHIFT ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct msc*,unsigned long) ; 
 int FUNC4 (struct msc*,unsigned long*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(struct msc *msc, unsigned long *nr_pages,
			    unsigned int nr_wins)
{
	int ret;

	/* -1: buffer not allocated */
	if (FUNC2(&msc->user_count) != -1)
		return -EBUSY;

	if (msc->mode == MSC_MODE_SINGLE) {
		if (nr_wins != 1)
			return -EINVAL;

		ret = FUNC3(msc, nr_pages[0] << PAGE_SHIFT);
	} else if (msc->mode == MSC_MODE_MULTI) {
		ret = FUNC4(msc, nr_pages, nr_wins);
	} else {
		ret = -ENOTSUPP;
	}

	if (!ret) {
		/* allocation should be visible before the counter goes to 0 */
		FUNC5();

		if (FUNC0(FUNC1(&msc->user_count, -1, 0) != -1))
			return -EINVAL;
	}

	return ret;
}
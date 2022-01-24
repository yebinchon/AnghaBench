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
struct hns_roce_bitmap {unsigned long max; unsigned long last; int top; int reserved_top; int mask; int /*<<< orphan*/  lock; int /*<<< orphan*/  table; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ,int) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct hns_roce_bitmap *bitmap, unsigned long *obj)
{
	int ret = 0;

	FUNC3(&bitmap->lock);
	*obj = FUNC1(bitmap->table, bitmap->max, bitmap->last);
	if (*obj >= bitmap->max) {
		bitmap->top = (bitmap->top + bitmap->max + bitmap->reserved_top)
			       & bitmap->mask;
		*obj = FUNC0(bitmap->table, bitmap->max);
	}

	if (*obj < bitmap->max) {
		FUNC2(*obj, bitmap->table);
		bitmap->last = (*obj + 1);
		if (bitmap->last == bitmap->max)
			bitmap->last = 0;
		*obj |= bitmap->top;
	} else {
		ret = -1;
	}

	FUNC4(&bitmap->lock);

	return ret;
}
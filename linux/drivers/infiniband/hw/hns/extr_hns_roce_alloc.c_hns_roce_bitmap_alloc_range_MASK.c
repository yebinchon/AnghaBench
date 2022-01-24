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
 unsigned long FUNC0 (int /*<<< orphan*/ ,unsigned long,unsigned long,int,int) ; 
 int FUNC1 (struct hns_roce_bitmap*,unsigned long*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct hns_roce_bitmap *bitmap, int cnt,
				int align, unsigned long *obj)
{
	int ret = 0;
	int i;

	if (FUNC2(cnt == 1 && align == 1))
		return FUNC1(bitmap, obj);

	FUNC4(&bitmap->lock);

	*obj = FUNC0(bitmap->table, bitmap->max,
					  bitmap->last, cnt, align - 1);
	if (*obj >= bitmap->max) {
		bitmap->top = (bitmap->top + bitmap->max + bitmap->reserved_top)
			       & bitmap->mask;
		*obj = FUNC0(bitmap->table, bitmap->max, 0,
						  cnt, align - 1);
	}

	if (*obj < bitmap->max) {
		for (i = 0; i < cnt; i++)
			FUNC3(*obj + i, bitmap->table);

		if (*obj == bitmap->last) {
			bitmap->last = (*obj + cnt);
			if (bitmap->last >= bitmap->max)
				bitmap->last = 0;
		}
		*obj |= bitmap->top;
	} else {
		ret = -1;
	}

	FUNC5(&bitmap->lock);

	return ret;
}
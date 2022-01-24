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
typedef  scalar_t__ u32 ;
struct hns_roce_bitmap {int /*<<< orphan*/  table; scalar_t__ max; int /*<<< orphan*/  lock; scalar_t__ reserved_top; scalar_t__ mask; scalar_t__ top; scalar_t__ last; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct hns_roce_bitmap *bitmap, u32 num, u32 mask,
			 u32 reserved_bot, u32 reserved_top)
{
	u32 i;

	if (num != FUNC2(num))
		return -EINVAL;

	bitmap->last = 0;
	bitmap->top = 0;
	bitmap->max = num - reserved_top;
	bitmap->mask = mask;
	bitmap->reserved_top = reserved_top;
	FUNC4(&bitmap->lock);
	bitmap->table = FUNC1(FUNC0(bitmap->max), sizeof(long),
				GFP_KERNEL);
	if (!bitmap->table)
		return -ENOMEM;

	for (i = 0; i < reserved_bot; ++i)
		FUNC3(i, bitmap->table);

	return 0;
}
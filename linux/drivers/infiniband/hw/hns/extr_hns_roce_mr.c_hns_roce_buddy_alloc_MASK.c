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
typedef  unsigned long u32 ;
struct hns_roce_buddy {int max_order; int /*<<< orphan*/  lock; scalar_t__* num_free; int /*<<< orphan*/ * bits; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct hns_roce_buddy *buddy, int order,
				unsigned long *seg)
{
	int o;
	u32 m;

	FUNC3(&buddy->lock);

	for (o = order; o <= buddy->max_order; ++o) {
		if (buddy->num_free[o]) {
			m = 1 << (buddy->max_order - o);
			*seg = FUNC1(buddy->bits[o], m);
			if (*seg < m)
				goto found;
		}
	}
	FUNC4(&buddy->lock);
	return -1;

 found:
	FUNC0(*seg, buddy->bits[o]);
	--buddy->num_free[o];

	while (o > order) {
		--o;
		*seg <<= 1;
		FUNC2(*seg ^ 1, buddy->bits[o]);
		++buddy->num_free[o];
	}

	FUNC4(&buddy->lock);

	*seg <<= order;
	return 0;
}
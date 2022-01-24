#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct lv0104cs_private {int calibscale; int /*<<< orphan*/  lock; int /*<<< orphan*/  client; } ;
struct TYPE_3__ {int val; int val2; int /*<<< orphan*/  regval; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int EINVAL ; 
 TYPE_1__* lv0104cs_calibscales ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct lv0104cs_private *lv0104cs,
				int val, int val2)
{
	int calibscale = val * 1000000 + val2;
	int floor, ceil, mid;
	int ret, i, index;

	/* round to nearest quantized calibscale (sensitivity) */
	for (i = 0; i < FUNC0(lv0104cs_calibscales) - 1; i++) {
		floor = lv0104cs_calibscales[i].val * 1000000
				+ lv0104cs_calibscales[i].val2;
		ceil = lv0104cs_calibscales[i + 1].val * 1000000
				+ lv0104cs_calibscales[i + 1].val2;
		mid = (floor + ceil) / 2;

		/* round down */
		if (calibscale >= floor && calibscale < mid) {
			index = i;
			break;
		}

		/* round up */
		if (calibscale >= mid && calibscale <= ceil) {
			index = i + 1;
			break;
		}
	}

	if (i == FUNC0(lv0104cs_calibscales) - 1)
		return -EINVAL;

	FUNC2(&lv0104cs->lock);

	/* set calibscale (sensitivity) */
	ret = FUNC1(lv0104cs->client,
			lv0104cs_calibscales[index].regval);
	if (ret)
		goto err_mutex;

	lv0104cs->calibscale = index;

err_mutex:
	FUNC3(&lv0104cs->lock);

	return ret;
}
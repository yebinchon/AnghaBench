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
struct sectors_dirty_init {int /*<<< orphan*/  start; int /*<<< orphan*/  op; int /*<<< orphan*/  inode; scalar_t__ count; } ;
struct bcache_device {int /*<<< orphan*/  c; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  INIT_KEYS_SLEEP_MS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sectors_dirty_init_fn ; 

void FUNC6(struct bcache_device *d)
{
	struct sectors_dirty_init op;
	int ret;

	FUNC2(&op.op, -1);
	op.inode = d->id;
	op.count = 0;
	op.start = FUNC0(op.inode, 0, 0);

	do {
		ret = FUNC1(&op.op, d->c, &op.start,
					 sectors_dirty_init_fn, 0);
		if (ret == -EAGAIN)
			FUNC5(
				FUNC3(INIT_KEYS_SLEEP_MS));
		else if (ret < 0) {
			FUNC4("sectors dirty init failed, ret=%d!", ret);
			break;
		}
	} while (ret == -EAGAIN);
}
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
struct mapped_device {int /*<<< orphan*/  bs; int /*<<< orphan*/  io_bs; } ;
struct dm_table {int dummy; } ;
struct dm_md_mempools {int /*<<< orphan*/  io_bs; int /*<<< orphan*/  bs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct dm_table*) ; 
 int /*<<< orphan*/  FUNC5 (struct dm_table*) ; 
 struct dm_md_mempools* FUNC6 (struct dm_table*) ; 

__attribute__((used)) static int FUNC7(struct mapped_device *md, struct dm_table *t)
{
	struct dm_md_mempools *p = FUNC6(t);
	int ret = 0;

	if (FUNC4(t)) {
		/*
		 * The md may already have mempools that need changing.
		 * If so, reload bioset because front_pad may have changed
		 * because a different table was loaded.
		 */
		FUNC1(&md->bs);
		FUNC1(&md->io_bs);

	} else if (FUNC3(&md->bs)) {
		/*
		 * There's no need to reload with request-based dm
		 * because the size of front_pad doesn't change.
		 * Note for future: If you are to reload bioset,
		 * prep-ed requests in the queue may refer
		 * to bio from the old bioset, so you must walk
		 * through the queue to unprep.
		 */
		goto out;
	}

	FUNC0(!p ||
	       FUNC3(&md->bs) ||
	       FUNC3(&md->io_bs));

	ret = FUNC2(&md->bs, &p->bs);
	if (ret)
		goto out;
	ret = FUNC2(&md->io_bs, &p->io_bs);
	if (ret)
		FUNC1(&md->bs);
out:
	/* mempool bind completed, no longer need any mempools in the table */
	FUNC5(t);
	return ret;
}
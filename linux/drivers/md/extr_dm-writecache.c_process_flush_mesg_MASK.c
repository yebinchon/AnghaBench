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
struct dm_writecache {int /*<<< orphan*/  writeback_all; int /*<<< orphan*/  writeback_wq; int /*<<< orphan*/  writeback_work; int /*<<< orphan*/  ti; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int EIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct dm_writecache*) ; 
 int /*<<< orphan*/  FUNC4 (struct dm_writecache*) ; 
 int /*<<< orphan*/  FUNC5 (struct dm_writecache*) ; 
 scalar_t__ FUNC6 (struct dm_writecache*) ; 

__attribute__((used)) static int FUNC7(unsigned argc, char **argv, struct dm_writecache *wc)
{
	if (argc != 1)
		return -EINVAL;

	FUNC3(wc);
	if (FUNC0(wc->ti)) {
		FUNC4(wc);
		return -EBUSY;
	}
	if (FUNC6(wc)) {
		FUNC4(wc);
		return -EIO;
	}

	FUNC5(wc);
	wc->writeback_all++;
	FUNC2(wc->writeback_wq, &wc->writeback_work);
	FUNC4(wc);

	FUNC1(wc->writeback_wq);

	FUNC3(wc);
	wc->writeback_all--;
	if (FUNC6(wc)) {
		FUNC4(wc);
		return -EIO;
	}
	FUNC4(wc);

	return 0;
}
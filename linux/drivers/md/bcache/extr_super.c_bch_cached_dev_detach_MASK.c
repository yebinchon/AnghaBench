#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  cl; int /*<<< orphan*/  flags; } ;
struct cached_dev {TYPE_1__ disk; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCACHE_DEV_CLOSING ; 
 int /*<<< orphan*/  BCACHE_DEV_DETACHING ; 
 int /*<<< orphan*/  bch_register_lock ; 
 int /*<<< orphan*/  FUNC0 (struct cached_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct cached_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC6(struct cached_dev *dc)
{
	FUNC3(&bch_register_lock);

	if (FUNC5(BCACHE_DEV_CLOSING, &dc->disk.flags))
		return;

	if (FUNC4(BCACHE_DEV_DETACHING, &dc->disk.flags))
		return;

	/*
	 * Block the device from being closed and freed until we're finished
	 * detaching
	 */
	FUNC2(&dc->disk.cl);

	FUNC0(dc);

	FUNC1(dc);
}
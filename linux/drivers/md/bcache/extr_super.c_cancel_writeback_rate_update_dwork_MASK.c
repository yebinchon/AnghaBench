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
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;
struct cached_dev {int /*<<< orphan*/  writeback_rate_update; TYPE_1__ disk; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCACHE_DEV_RATE_DW_RUNNING ; 
 int HZ ; 
 int WRITEBACK_RATE_UPDATE_SECS_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct cached_dev *dc)
{
	int time_out = WRITEBACK_RATE_UPDATE_SECS_MAX * HZ;

	do {
		if (!FUNC3(BCACHE_DEV_RATE_DW_RUNNING,
			      &dc->disk.flags))
			break;
		time_out--;
		FUNC2(1);
	} while (time_out > 0);

	if (time_out == 0)
		FUNC1("give up waiting for dc->writeback_write_update to quit");

	FUNC0(&dc->writeback_rate_update);
}
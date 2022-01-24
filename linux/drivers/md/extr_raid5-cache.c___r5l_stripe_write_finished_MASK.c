#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct r5l_log {scalar_t__ max_free_space; int /*<<< orphan*/  iounit_wait; int /*<<< orphan*/  io_list_lock; TYPE_2__* rdev; } ;
struct r5l_io_unit {struct r5l_log* log; } ;
struct r5conf {int /*<<< orphan*/  cache_state; } ;
struct TYPE_4__ {TYPE_1__* mddev; } ;
struct TYPE_3__ {struct r5conf* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  IO_UNIT_STRIPE_END ; 
 int /*<<< orphan*/  R5C_LOG_TIGHT ; 
 int /*<<< orphan*/  FUNC0 (struct r5l_io_unit*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct r5l_log*) ; 
 scalar_t__ FUNC2 (struct r5l_log*) ; 
 int /*<<< orphan*/  FUNC3 (struct r5l_log*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct r5l_io_unit *io)
{
	struct r5l_log *log = io->log;
	struct r5conf *conf = log->rdev->mddev->private;
	unsigned long flags;

	FUNC4(&log->io_list_lock, flags);
	FUNC0(io, IO_UNIT_STRIPE_END);

	if (!FUNC1(log)) {
		FUNC5(&log->io_list_lock, flags);
		return;
	}

	if (FUNC2(log) > log->max_free_space ||
	    FUNC6(R5C_LOG_TIGHT, &conf->cache_state))
		FUNC3(log, 0);

	FUNC5(&log->io_list_lock, flags);
	FUNC7(&log->iounit_wait);
}
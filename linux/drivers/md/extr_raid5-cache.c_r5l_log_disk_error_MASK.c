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
struct r5l_log {TYPE_2__* rdev; } ;
struct r5conf {TYPE_1__* mddev; int /*<<< orphan*/  log; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;
struct TYPE_3__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  Faulty ; 
 int /*<<< orphan*/  MD_HAS_JOURNAL ; 
 struct r5l_log* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

bool FUNC4(struct r5conf *conf)
{
	struct r5l_log *log;
	bool ret;
	/* don't allow write if journal disk is missing */
	FUNC1();
	log = FUNC0(conf->log);

	if (!log)
		ret = FUNC3(MD_HAS_JOURNAL, &conf->mddev->flags);
	else
		ret = FUNC3(Faulty, &log->rdev->flags);
	FUNC2();
	return ret;
}
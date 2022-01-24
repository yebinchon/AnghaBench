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
struct r5conf {TYPE_1__* log; } ;
struct mddev {struct r5conf* private; } ;
struct TYPE_2__ {int r5c_journal_mode; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int R5C_JOURNAL_MODE_WRITE_BACK ; 
 int R5C_JOURNAL_MODE_WRITE_THROUGH ; 
 int /*<<< orphan*/  FUNC0 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC1 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC2 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * r5c_journal_mode_str ; 
 scalar_t__ FUNC4 (struct r5conf*) ; 

int FUNC5(struct mddev *mddev, int mode)
{
	struct r5conf *conf;

	if (mode < R5C_JOURNAL_MODE_WRITE_THROUGH ||
	    mode > R5C_JOURNAL_MODE_WRITE_BACK)
		return -EINVAL;

	conf = mddev->private;
	if (!conf || !conf->log)
		return -ENODEV;

	if (FUNC4(conf) > 0 &&
	    mode == R5C_JOURNAL_MODE_WRITE_BACK)
		return -EINVAL;

	FUNC1(mddev);
	conf->log->r5c_journal_mode = mode;
	FUNC0(mddev);

	FUNC3("md/raid:%s: setting r5c cache mode to %d: %s\n",
		 FUNC2(mddev), mode, r5c_journal_mode_str[mode]);
	return 0;
}
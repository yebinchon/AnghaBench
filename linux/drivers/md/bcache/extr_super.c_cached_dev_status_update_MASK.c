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
struct request_queue {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct cached_dev {int io_disable; scalar_t__ offline_seconds; TYPE_1__ disk; int /*<<< orphan*/  backing_dev_name; int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 scalar_t__ BACKING_DEV_OFFLINE_TIMEOUT ; 
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 struct request_queue* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static int FUNC8(void *arg)
{
	struct cached_dev *dc = arg;
	struct request_queue *q;

	/*
	 * If this delayed worker is stopping outside, directly quit here.
	 * dc->io_disable might be set via sysfs interface, so check it
	 * here too.
	 */
	while (!FUNC3() && !dc->io_disable) {
		q = FUNC1(dc->bdev);
		if (FUNC2(q))
			dc->offline_seconds++;
		else
			dc->offline_seconds = 0;

		if (dc->offline_seconds >= BACKING_DEV_OFFLINE_TIMEOUT) {
			FUNC4("%s: device offline for %d seconds",
			       dc->backing_dev_name,
			       BACKING_DEV_OFFLINE_TIMEOUT);
			FUNC4("%s: disable I/O request due to backing "
			       "device offline", dc->disk.name);
			dc->io_disable = true;
			/* let others know earlier that io_disable is true */
			FUNC6();
			FUNC0(&dc->disk);
			break;
		}
		FUNC5(HZ);
	}

	FUNC7();
	return 0;
}
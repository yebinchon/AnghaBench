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
struct TYPE_3__ {int /*<<< orphan*/  notifier_call; } ;
struct gb_svc_watchdog {int enabled; TYPE_1__ pm_notifier; int /*<<< orphan*/  work; struct gb_svc* svc; } ;
struct gb_svc {struct gb_svc_watchdog* watchdog; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  do_work ; 
 int FUNC2 (struct gb_svc*) ; 
 int /*<<< orphan*/  FUNC3 (struct gb_svc_watchdog*) ; 
 struct gb_svc_watchdog* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  svc_watchdog_pm_notifier ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

int FUNC7(struct gb_svc *svc)
{
	struct gb_svc_watchdog *watchdog;
	int retval;

	if (svc->watchdog)
		return 0;

	watchdog = FUNC4(sizeof(*watchdog), GFP_KERNEL);
	if (!watchdog)
		return -ENOMEM;

	watchdog->enabled = false;
	watchdog->svc = svc;
	FUNC0(&watchdog->work, do_work);
	svc->watchdog = watchdog;

	watchdog->pm_notifier.notifier_call = svc_watchdog_pm_notifier;
	retval = FUNC5(&watchdog->pm_notifier);
	if (retval) {
		FUNC1(&svc->dev, "error registering pm notifier(%d)\n",
			retval);
		goto svc_watchdog_create_err;
	}

	retval = FUNC2(svc);
	if (retval) {
		FUNC1(&svc->dev, "error enabling watchdog (%d)\n", retval);
		FUNC6(&watchdog->pm_notifier);
		goto svc_watchdog_create_err;
	}
	return retval;

svc_watchdog_create_err:
	svc->watchdog = NULL;
	FUNC3(watchdog);

	return retval;
}
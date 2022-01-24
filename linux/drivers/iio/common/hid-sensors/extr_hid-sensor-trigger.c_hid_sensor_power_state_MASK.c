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
struct hid_sensor_common {int /*<<< orphan*/  user_requested_state; TYPE_1__* pdev; int /*<<< orphan*/  runtime_pm_enable; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (struct hid_sensor_common*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(struct hid_sensor_common *st, bool state)
{

#ifdef CONFIG_PM
	int ret;

	if (atomic_add_unless(&st->runtime_pm_enable, 1, 1))
		pm_runtime_enable(&st->pdev->dev);

	if (state) {
		atomic_inc(&st->user_requested_state);
		ret = pm_runtime_get_sync(&st->pdev->dev);
	} else {
		atomic_dec(&st->user_requested_state);
		pm_runtime_mark_last_busy(&st->pdev->dev);
		pm_runtime_use_autosuspend(&st->pdev->dev);
		ret = pm_runtime_put_autosuspend(&st->pdev->dev);
	}
	if (ret < 0) {
		if (state)
			pm_runtime_put_noidle(&st->pdev->dev);
		return ret;
	}

	return 0;
#else
	FUNC4(&st->user_requested_state, state);
	return FUNC0(st, state);
#endif
}
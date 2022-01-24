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
struct ns2_led_data {int num_modes; int /*<<< orphan*/  rw_lock; TYPE_1__* modval; int /*<<< orphan*/  slow; int /*<<< orphan*/  cmd; int /*<<< orphan*/  can_sleep; } ;
typedef  enum ns2_led_modes { ____Placeholder_ns2_led_modes } ns2_led_modes ;
struct TYPE_2__ {int mode; int /*<<< orphan*/  slow_level; int /*<<< orphan*/  cmd_level; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct ns2_led_data *led_dat,
			     enum ns2_led_modes mode)
{
	int i;
	bool found = false;
	unsigned long flags;

	for (i = 0; i < led_dat->num_modes; i++)
		if (mode == led_dat->modval[i].mode) {
			found = true;
			break;
		}

	if (!found)
		return;

	FUNC2(&led_dat->rw_lock, flags);

	if (!led_dat->can_sleep) {
		FUNC0(led_dat->cmd,
			       led_dat->modval[i].cmd_level);
		FUNC0(led_dat->slow,
			       led_dat->modval[i].slow_level);
		goto exit_unlock;
	}

	FUNC1(led_dat->cmd, led_dat->modval[i].cmd_level);
	FUNC1(led_dat->slow, led_dat->modval[i].slow_level);

exit_unlock:
	FUNC3(&led_dat->rw_lock, flags);
}
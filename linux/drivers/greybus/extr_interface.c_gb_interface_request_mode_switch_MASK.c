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
struct gb_interface {int mode_switch; int /*<<< orphan*/  mutex; int /*<<< orphan*/  dev; int /*<<< orphan*/  mode_switch_work; int /*<<< orphan*/  mode_switch_completion; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  system_long_wq ; 

int FUNC6(struct gb_interface *intf)
{
	int ret = 0;

	FUNC1(&intf->mutex);
	if (intf->mode_switch) {
		ret = -EBUSY;
		goto out_unlock;
	}

	intf->mode_switch = true;
	FUNC5(&intf->mode_switch_completion);

	/*
	 * Get a reference to the interface device, which will be put once the
	 * mode switch is complete.
	 */
	FUNC0(&intf->dev);

	if (!FUNC4(system_long_wq, &intf->mode_switch_work)) {
		FUNC3(&intf->dev);
		ret = -EBUSY;
		goto out_unlock;
	}

out_unlock:
	FUNC2(&intf->mutex);

	return ret;
}
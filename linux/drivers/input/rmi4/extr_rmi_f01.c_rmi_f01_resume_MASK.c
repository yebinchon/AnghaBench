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
struct TYPE_3__ {int /*<<< orphan*/  control_base_addr; } ;
struct rmi_function {int /*<<< orphan*/  dev; TYPE_1__ fd; int /*<<< orphan*/  rmi_dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  ctrl0; } ;
struct f01_data {TYPE_2__ device_control; scalar_t__ old_nosleep; } ;

/* Variables and functions */
 int /*<<< orphan*/  RMI_F01_CTRL0_NOSLEEP_BIT ; 
 int /*<<< orphan*/  RMI_F01_CTRL0_SLEEP_MODE_MASK ; 
 int /*<<< orphan*/  RMI_SLEEP_MODE_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 struct f01_data* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct rmi_function *fn)
{
	struct f01_data *f01 = FUNC1(&fn->dev);
	int error;

	if (f01->old_nosleep)
		f01->device_control.ctrl0 |= RMI_F01_CTRL0_NOSLEEP_BIT;

	f01->device_control.ctrl0 &= ~RMI_F01_CTRL0_SLEEP_MODE_MASK;
	f01->device_control.ctrl0 |= RMI_SLEEP_MODE_NORMAL;

	error = FUNC2(fn->rmi_dev, fn->fd.control_base_addr,
			  f01->device_control.ctrl0);
	if (error) {
		FUNC0(&fn->dev,
			"Failed to restore normal operation: %d.\n", error);
		return error;
	}

	return 0;
}
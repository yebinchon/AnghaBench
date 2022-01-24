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
struct TYPE_2__ {int /*<<< orphan*/  i3c; int /*<<< orphan*/  i2c; } ;
struct i3c_bus {int id; int /*<<< orphan*/  mode; TYPE_1__ devs; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I3C_BUS_MODE_PURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  i3c_bus_idr ; 
 int /*<<< orphan*/  FUNC1 (struct i3c_bus*) ; 
 int /*<<< orphan*/  i3c_core_lock ; 
 int FUNC2 (int /*<<< orphan*/ *,struct i3c_bus*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct i3c_bus *i3cbus)
{
	int ret;

	FUNC3(&i3cbus->lock);
	FUNC0(&i3cbus->devs.i2c);
	FUNC0(&i3cbus->devs.i3c);
	FUNC1(i3cbus);
	i3cbus->mode = I3C_BUS_MODE_PURE;

	FUNC4(&i3c_core_lock);
	ret = FUNC2(&i3c_bus_idr, i3cbus, 0, 0, GFP_KERNEL);
	FUNC5(&i3c_core_lock);

	if (ret < 0)
		return ret;

	i3cbus->id = ret;

	return 0;
}
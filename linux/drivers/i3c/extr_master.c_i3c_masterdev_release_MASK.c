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
struct i3c_master_controller {scalar_t__ wq; } ;
struct TYPE_2__ {int /*<<< orphan*/  i3c; int /*<<< orphan*/  i2c; } ;
struct i3c_bus {TYPE_1__ devs; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct i3c_bus* FUNC2 (struct device*) ; 
 struct i3c_master_controller* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct i3c_bus*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct device *dev)
{
	struct i3c_master_controller *master = FUNC3(dev);
	struct i3c_bus *bus = FUNC2(dev);

	if (master->wq)
		FUNC1(master->wq);

	FUNC0(!FUNC5(&bus->devs.i2c) || !FUNC5(&bus->devs.i3c));
	FUNC4(bus);

	FUNC6(dev->of_node);
}
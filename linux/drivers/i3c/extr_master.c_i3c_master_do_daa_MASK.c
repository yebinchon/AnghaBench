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
struct i3c_master_controller {int /*<<< orphan*/  bus; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* do_daa ) (struct i3c_master_controller*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct i3c_master_controller*) ; 
 int FUNC5 (struct i3c_master_controller*) ; 

int FUNC6(struct i3c_master_controller *master)
{
	int ret;

	FUNC0(&master->bus);
	ret = master->ops->do_daa(master);
	FUNC1(&master->bus);

	if (ret)
		return ret;

	FUNC2(&master->bus);
	FUNC4(master);
	FUNC3(&master->bus);

	return 0;
}
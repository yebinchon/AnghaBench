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
struct i3c_master_controller {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct i3c_master_controller*) ; 
 int /*<<< orphan*/  FUNC2 (struct i3c_master_controller*) ; 
 int /*<<< orphan*/  FUNC3 (struct i3c_master_controller*) ; 

int FUNC4(struct i3c_master_controller *master)
{
	FUNC2(master);
	FUNC3(master);
	FUNC1(master);
	FUNC0(&master->dev);

	return 0;
}
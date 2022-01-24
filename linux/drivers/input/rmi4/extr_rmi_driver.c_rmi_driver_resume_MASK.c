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
struct rmi_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rmi_device*,int) ; 
 int FUNC2 (struct rmi_device*) ; 

int FUNC3(struct rmi_device *rmi_dev, bool clear_wake)
{
	int retval;

	FUNC1(rmi_dev, clear_wake);

	retval = FUNC2(rmi_dev);
	if (retval)
		FUNC0(&rmi_dev->dev, "Failed to suspend functions: %d\n",
			retval);

	return retval;
}
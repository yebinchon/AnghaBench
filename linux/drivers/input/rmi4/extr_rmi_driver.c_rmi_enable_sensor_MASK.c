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
struct rmi_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct rmi_device*) ; 
 int FUNC1 (struct rmi_device*) ; 

int FUNC2(struct rmi_device *rmi_dev)
{
	int retval = 0;

	retval = FUNC0(rmi_dev);
	if (retval < 0)
		return retval;

	return FUNC1(rmi_dev);
}
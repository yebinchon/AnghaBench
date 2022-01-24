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
struct rmi_function_handler {scalar_t__ func; } ;
struct TYPE_2__ {scalar_t__ function_number; } ;
struct rmi_function {TYPE_1__ fd; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct rmi_function* FUNC0 (struct device*) ; 
 struct rmi_function_handler* FUNC1 (struct device_driver*) ; 

__attribute__((used)) static int FUNC2(struct device *dev, struct device_driver *drv)
{
	struct rmi_function_handler *handler = FUNC1(drv);
	struct rmi_function *fn = FUNC0(dev);

	return fn->fd.function_number == handler->func;
}
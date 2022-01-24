#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/ * bus; int /*<<< orphan*/ * type; struct TYPE_10__* parent; } ;
struct TYPE_9__ {int /*<<< orphan*/  function_number; } ;
struct rmi_function {TYPE_2__ dev; TYPE_1__ fd; struct rmi_device* rmi_dev; } ;
struct rmi_device {TYPE_2__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  RMI_DEBUG_CORE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  rmi_bus_type ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rmi_function_type ; 

int FUNC7(struct rmi_function *fn)
{
	struct rmi_device *rmi_dev = fn->rmi_dev;
	int error;

	FUNC4(&fn->dev);

	FUNC2(&fn->dev, "%s.fn%02x",
		     FUNC1(&rmi_dev->dev), fn->fd.function_number);

	fn->dev.parent = &rmi_dev->dev;
	fn->dev.type = &rmi_function_type;
	fn->dev.bus = &rmi_bus_type;

	error = FUNC3(&fn->dev);
	if (error) {
		FUNC0(&rmi_dev->dev,
			"Failed device_register function device %s\n",
			FUNC1(&fn->dev));
		goto err_put_device;
	}

	FUNC6(RMI_DEBUG_CORE, &rmi_dev->dev, "Registered F%02X.\n",
			fn->fd.function_number);

	return 0;

err_put_device:
	FUNC5(&fn->dev);
	return error;
}
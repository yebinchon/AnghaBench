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
struct rmi_function {struct rmi_device* rmi_dev; } ;
struct rmi_driver_data {scalar_t__ input; } ;
struct rmi_device {int /*<<< orphan*/  dev; } ;
struct rmi_2d_sensor {scalar_t__ input; } ;

/* Variables and functions */
 int ENODEV ; 
 struct rmi_driver_data* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rmi_2d_sensor*) ; 

int FUNC2(struct rmi_function *fn,
					struct rmi_2d_sensor *sensor)
{
	struct rmi_device *rmi_dev = fn->rmi_dev;
	struct rmi_driver_data *drv_data = FUNC0(&rmi_dev->dev);

	if (!drv_data->input)
		return -ENODEV;

	sensor->input = drv_data->input;
	FUNC1(sensor);

	return 0;
}
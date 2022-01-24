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
struct rmi_function {int /*<<< orphan*/  dev; struct rmi_device* rmi_dev; } ;
struct rmi_driver_data {scalar_t__ input; } ;
struct TYPE_2__ {scalar_t__ disable; } ;
struct rmi_device_platform_data {TYPE_1__ f30_data; } ;
struct rmi_device {int /*<<< orphan*/  dev; } ;
struct f30_data {scalar_t__ input; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct rmi_driver_data* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct f30_data*) ; 
 struct f30_data* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct rmi_function*,struct f30_data*) ; 
 struct rmi_device_platform_data* FUNC5 (struct rmi_device*) ; 

__attribute__((used)) static int FUNC6(struct rmi_function *fn)
{
	struct rmi_device *rmi_dev = fn->rmi_dev;
	const struct rmi_device_platform_data *pdata =
					FUNC5(rmi_dev);
	struct rmi_driver_data *drv_data = FUNC0(&rmi_dev->dev);
	struct f30_data *f30;
	int error;

	if (pdata->f30_data.disable)
		return 0;

	if (!drv_data->input) {
		FUNC1(&fn->dev, "F30: no input device found, ignoring\n");
		return -ENXIO;
	}

	f30 = FUNC3(&fn->dev, sizeof(*f30), GFP_KERNEL);
	if (!f30)
		return -ENOMEM;

	f30->input = drv_data->input;

	error = FUNC4(fn, f30);
	if (error)
		return error;

	FUNC2(&fn->dev, f30);
	return 0;
}
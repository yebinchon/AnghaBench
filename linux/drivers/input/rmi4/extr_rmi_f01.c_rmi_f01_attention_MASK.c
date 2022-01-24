#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_3__ {int /*<<< orphan*/  data_base_addr; } ;
struct rmi_function {int /*<<< orphan*/  dev; TYPE_1__ fd; struct rmi_device* rmi_dev; } ;
struct rmi_device {TYPE_2__* driver; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_4__ {int (* reset_handler ) (struct rmi_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int FUNC5 (struct rmi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct rmi_device*) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *ctx)
{
	struct rmi_function *fn = ctx;
	struct rmi_device *rmi_dev = fn->rmi_dev;
	int error;
	u8 device_status;

	error = FUNC5(rmi_dev, fn->fd.data_base_addr, &device_status);
	if (error) {
		FUNC3(&fn->dev,
			"Failed to read device status: %d.\n", error);
		return FUNC0(error);
	}

	if (FUNC1(device_status))
		FUNC4(&fn->dev,
			 "Device in bootloader mode, please update firmware\n");

	if (FUNC2(device_status)) {
		FUNC4(&fn->dev, "Device reset detected.\n");
		error = rmi_dev->driver->reset_handler(rmi_dev);
		if (error) {
			FUNC3(&fn->dev, "Device reset failed: %d\n", error);
			return FUNC0(error);
		}
	}

	return IRQ_HANDLED;
}
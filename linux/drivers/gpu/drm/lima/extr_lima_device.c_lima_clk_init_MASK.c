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
struct lima_device {int /*<<< orphan*/ * clk_bus; int /*<<< orphan*/ * clk_gpu; int /*<<< orphan*/  dev; int /*<<< orphan*/ * reset; } ;

/* Variables and functions */
 int EPROBE_DEFER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 void* FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct lima_device *dev)
{
	int err;

	dev->clk_bus = FUNC5(dev->dev, "bus");
	if (FUNC0(dev->clk_bus)) {
		err = FUNC1(dev->clk_bus);
		if (err != -EPROBE_DEFER)
			FUNC4(dev->dev, "get bus clk failed %d\n", err);
		return err;
	}

	dev->clk_gpu = FUNC5(dev->dev, "core");
	if (FUNC0(dev->clk_gpu)) {
		err = FUNC1(dev->clk_gpu);
		if (err != -EPROBE_DEFER)
			FUNC4(dev->dev, "get core clk failed %d\n", err);
		return err;
	}

	err = FUNC3(dev->clk_bus);
	if (err)
		return err;

	err = FUNC3(dev->clk_gpu);
	if (err)
		goto error_out0;

	dev->reset = FUNC6(dev->dev, NULL);
	if (FUNC0(dev->reset)) {
		err = FUNC1(dev->reset);
		if (err != -EPROBE_DEFER)
			FUNC4(dev->dev, "get reset controller failed %d\n",
				err);
		goto error_out1;
	} else if (dev->reset != NULL) {
		err = FUNC7(dev->reset);
		if (err) {
			FUNC4(dev->dev,
				"reset controller deassert failed %d\n", err);
			goto error_out1;
		}
	}

	return 0;

error_out1:
	FUNC2(dev->clk_gpu);
error_out0:
	FUNC2(dev->clk_bus);
	return err;
}
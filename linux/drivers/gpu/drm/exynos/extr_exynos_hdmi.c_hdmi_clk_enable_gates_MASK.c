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
struct hdmi_context {int /*<<< orphan*/ * clk_gates; TYPE_2__* drv_data; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int count; int /*<<< orphan*/ * data; } ;
struct TYPE_4__ {TYPE_1__ clk_gates; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct hdmi_context *hdata)
{
	int i, ret;

	for (i = 0; i < hdata->drv_data->clk_gates.count; ++i) {
		ret = FUNC1(hdata->clk_gates[i]);
		if (!ret)
			continue;

		FUNC2(hdata->dev, "Cannot enable clock '%s', %d\n",
			hdata->drv_data->clk_gates.data[i], ret);
		while (i--)
			FUNC0(hdata->clk_gates[i]);
		return ret;
	}

	return 0;
}
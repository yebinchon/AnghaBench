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
typedef  int /*<<< orphan*/  u32 ;
struct scmi_handle {struct clock_info* clk_priv; int /*<<< orphan*/ * clk_ops; int /*<<< orphan*/  dev; } ;
struct scmi_clock_info {int dummy; } ;
struct clock_info {int num_clocks; struct scmi_clock_info* clk; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCMI_PROTOCOL_CLOCK ; 
 int /*<<< orphan*/  clk_ops ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct scmi_clock_info* FUNC3 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 struct clock_info* FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct scmi_handle*,int,struct scmi_clock_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct scmi_handle*,int,struct scmi_clock_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct scmi_handle*,struct clock_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct scmi_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct scmi_handle *handle)
{
	u32 version;
	int clkid, ret;
	struct clock_info *cinfo;

	FUNC8(handle, SCMI_PROTOCOL_CLOCK, &version);

	FUNC2(handle->dev, "Clock Version %d.%d\n",
		FUNC0(version), FUNC1(version));

	cinfo = FUNC4(handle->dev, sizeof(*cinfo), GFP_KERNEL);
	if (!cinfo)
		return -ENOMEM;

	FUNC7(handle, cinfo);

	cinfo->clk = FUNC3(handle->dev, cinfo->num_clocks,
				  sizeof(*cinfo->clk), GFP_KERNEL);
	if (!cinfo->clk)
		return -ENOMEM;

	for (clkid = 0; clkid < cinfo->num_clocks; clkid++) {
		struct scmi_clock_info *clk = cinfo->clk + clkid;

		ret = FUNC5(handle, clkid, clk);
		if (!ret)
			FUNC6(handle, clkid, clk);
	}

	handle->clk_ops = &clk_ops;
	handle->clk_priv = cinfo;

	return 0;
}
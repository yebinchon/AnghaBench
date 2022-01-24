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
struct cdn_dp_device {int /*<<< orphan*/  grf_clk; int /*<<< orphan*/  dev; int /*<<< orphan*/  grf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct cdn_dp_device *dp,
			    unsigned int reg, unsigned int val)
{
	int ret;

	ret = FUNC2(dp->grf_clk);
	if (ret) {
		FUNC0(dp->dev, "Failed to prepare_enable grf clock\n");
		return ret;
	}

	ret = FUNC3(dp->grf, reg, val);
	if (ret) {
		FUNC0(dp->dev, "Could not write to GRF: %d\n", ret);
		return ret;
	}

	FUNC1(dp->grf_clk);

	return 0;
}
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
struct cdn_dp_device {int /*<<< orphan*/  pclk; int /*<<< orphan*/  core_clk; int /*<<< orphan*/  dev; int /*<<< orphan*/  apb_rst; int /*<<< orphan*/  dptx_rst; int /*<<< orphan*/  core_rst; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct cdn_dp_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct cdn_dp_device*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct cdn_dp_device *dp)
{
	int ret;
	unsigned long rate;

	ret = FUNC5(dp->pclk);
	if (ret < 0) {
		FUNC0(dp->dev, "cannot enable dp pclk %d\n", ret);
		goto err_pclk;
	}

	ret = FUNC5(dp->core_clk);
	if (ret < 0) {
		FUNC0(dp->dev, "cannot enable core_clk %d\n", ret);
		goto err_core_clk;
	}

	ret = FUNC6(dp->dev);
	if (ret < 0) {
		FUNC0(dp->dev, "cannot get pm runtime %d\n", ret);
		goto err_pm_runtime_get;
	}

	FUNC8(dp->core_rst);
	FUNC8(dp->dptx_rst);
	FUNC8(dp->apb_rst);
	FUNC9(dp->core_rst);
	FUNC9(dp->dptx_rst);
	FUNC9(dp->apb_rst);

	rate = FUNC4(dp->core_clk);
	if (!rate) {
		FUNC0(dp->dev, "get clk rate failed\n");
		ret = -EINVAL;
		goto err_set_rate;
	}

	FUNC2(dp, rate);
	FUNC1(dp);

	return 0;

err_set_rate:
	FUNC7(dp->dev);
err_pm_runtime_get:
	FUNC3(dp->core_clk);
err_core_clk:
	FUNC3(dp->pclk);
err_pclk:
	return ret;
}
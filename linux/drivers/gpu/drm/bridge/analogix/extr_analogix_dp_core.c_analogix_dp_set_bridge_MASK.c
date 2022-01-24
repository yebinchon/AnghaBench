#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct analogix_dp_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  clock; TYPE_1__* plat_data; int /*<<< orphan*/  phy; int /*<<< orphan*/  irq; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* power_off ) (TYPE_1__*) ;int /*<<< orphan*/  (* power_on_end ) (TYPE_1__*) ;int /*<<< orphan*/  (* power_on_start ) (TYPE_1__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (struct analogix_dp_device*) ; 
 int FUNC2 (struct analogix_dp_device*) ; 
 int FUNC3 (struct analogix_dp_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC14(struct analogix_dp_device *dp)
{
	int ret;

	FUNC9(dp->dev);

	ret = FUNC5(dp->clock);
	if (ret < 0) {
		FUNC0("Failed to prepare_enable the clock clk [%d]\n", ret);
		goto out_dp_clk_pre;
	}

	if (dp->plat_data->power_on_start)
		dp->plat_data->power_on_start(dp->plat_data);

	FUNC8(dp->phy);

	ret = FUNC3(dp);
	if (ret)
		goto out_dp_init;

	/*
	 * According to DP spec v1.3 chap 3.5.1.2 Link Training,
	 * We should first make sure the HPD signal is asserted high by device
	 * when we want to establish a link with it.
	 */
	ret = FUNC2(dp);
	if (ret) {
		FUNC0("failed to get hpd single ret = %d\n", ret);
		goto out_dp_init;
	}

	ret = FUNC1(dp);
	if (ret) {
		FUNC0("dp commit error, ret = %d\n", ret);
		goto out_dp_init;
	}

	if (dp->plat_data->power_on_end)
		dp->plat_data->power_on_end(dp->plat_data);

	FUNC6(dp->irq);
	return 0;

out_dp_init:
	FUNC7(dp->phy);
	if (dp->plat_data->power_off)
		dp->plat_data->power_off(dp->plat_data);
	FUNC4(dp->clock);
out_dp_clk_pre:
	FUNC10(dp->dev);

	return ret;
}
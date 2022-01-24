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
struct analogix_dp_device {TYPE_1__* plat_data; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {scalar_t__ panel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct analogix_dp_device*) ; 
 scalar_t__ FUNC2 (struct analogix_dp_device*) ; 
 int FUNC3 (struct analogix_dp_device*,int) ; 
 int FUNC4 (struct analogix_dp_device*) ; 
 int FUNC5 (struct analogix_dp_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct analogix_dp_device*) ; 
 int FUNC7 (struct analogix_dp_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 int FUNC10 (scalar_t__) ; 

__attribute__((used)) static int FUNC11(struct analogix_dp_device *dp)
{
	int ret;

	/* Keep the panel disabled while we configure video */
	if (dp->plat_data->panel) {
		if (FUNC9(dp->plat_data->panel))
			FUNC0("failed to disable the panel\n");
	}

	ret = FUNC7(dp);
	if (ret) {
		FUNC8(dp->dev, "unable to do link train, ret=%d\n", ret);
		return ret;
	}

	ret = FUNC3(dp, 1);
	if (ret < 0) {
		FUNC8(dp->dev, "can not enable scramble\n");
		return ret;
	}

	FUNC6(dp);
	ret = FUNC1(dp);
	if (ret) {
		FUNC8(dp->dev, "unable to config video\n");
		return ret;
	}

	/* Safe to enable the panel now */
	if (dp->plat_data->panel) {
		ret = FUNC10(dp->plat_data->panel);
		if (ret) {
			FUNC0("failed to enable the panel\n");
			return ret;
		}
	}

	/* Check whether panel supports fast training */
	ret = FUNC5(dp);
	if (ret)
		return ret;

	if (FUNC2(dp)) {
		ret = FUNC4(dp);
		if (ret)
			return ret;
	}

	return ret;
}
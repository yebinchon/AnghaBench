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
struct drm_bridge {struct analogix_dp_device* driver_private; } ;
struct analogix_dp_device {scalar_t__ dpms_mode; int fast_train_enable; int psr_supported; int /*<<< orphan*/  dev; int /*<<< orphan*/  clock; int /*<<< orphan*/  phy; TYPE_1__* plat_data; int /*<<< orphan*/  irq; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* power_off ) (TYPE_1__*) ;scalar_t__ panel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ DRM_MODE_DPMS_OFF ; 
 scalar_t__ DRM_MODE_DPMS_ON ; 
 int /*<<< orphan*/  POWER_ALL ; 
 int FUNC1 (struct analogix_dp_device*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct analogix_dp_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC9(struct drm_bridge *bridge)
{
	struct analogix_dp_device *dp = bridge->driver_private;
	int ret;

	if (dp->dpms_mode != DRM_MODE_DPMS_ON)
		return;

	if (dp->plat_data->panel) {
		if (FUNC5(dp->plat_data->panel)) {
			FUNC0("failed to disable the panel\n");
			return;
		}
	}

	FUNC4(dp->irq);

	if (dp->plat_data->power_off)
		dp->plat_data->power_off(dp->plat_data);

	FUNC2(dp, POWER_ALL, 1);
	FUNC6(dp->phy);

	FUNC3(dp->clock);

	FUNC7(dp->dev);

	ret = FUNC1(dp, false, true);
	if (ret)
		FUNC0("failed to setup the panel ret = %d\n", ret);

	dp->fast_train_enable = false;
	dp->psr_supported = false;
	dp->dpms_mode = DRM_MODE_DPMS_OFF;
}
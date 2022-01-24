#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* funcs; } ;
struct TYPE_6__ {int /*<<< orphan*/  get_modes; int /*<<< orphan*/  power_off; int /*<<< orphan*/  power_on_start; int /*<<< orphan*/  dev_type; TYPE_2__* encoder; } ;
struct rockchip_dp_device {TYPE_2__ encoder; int /*<<< orphan*/  adp; TYPE_3__ plat_data; struct drm_device* drm_dev; struct rockchip_dp_chip_data const* data; } ;
struct rockchip_dp_chip_data {int /*<<< orphan*/  chip_type; } ;
struct drm_device {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* destroy ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENODEV ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct drm_device*,TYPE_3__*) ; 
 struct rockchip_dp_device* FUNC4 (struct device*) ; 
 struct rockchip_dp_chip_data* FUNC5 (struct device*) ; 
 int FUNC6 (struct rockchip_dp_device*) ; 
 int /*<<< orphan*/  rockchip_dp_get_modes ; 
 int /*<<< orphan*/  rockchip_dp_powerdown ; 
 int /*<<< orphan*/  rockchip_dp_poweron_start ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC8(struct device *dev, struct device *master,
			    void *data)
{
	struct rockchip_dp_device *dp = FUNC4(dev);
	const struct rockchip_dp_chip_data *dp_data;
	struct drm_device *drm_dev = data;
	int ret;

	dp_data = FUNC5(dev);
	if (!dp_data)
		return -ENODEV;

	dp->data = dp_data;
	dp->drm_dev = drm_dev;

	ret = FUNC6(dp);
	if (ret) {
		FUNC0("failed to create drm encoder\n");
		return ret;
	}

	dp->plat_data.encoder = &dp->encoder;

	dp->plat_data.dev_type = dp->data->chip_type;
	dp->plat_data.power_on_start = rockchip_dp_poweron_start;
	dp->plat_data.power_off = rockchip_dp_powerdown;
	dp->plat_data.get_modes = rockchip_dp_get_modes;

	dp->adp = FUNC3(dev, dp->drm_dev, &dp->plat_data);
	if (FUNC1(dp->adp)) {
		ret = FUNC2(dp->adp);
		goto err_cleanup_encoder;
	}

	return 0;
err_cleanup_encoder:
	dp->encoder.funcs->destroy(&dp->encoder);
	return ret;
}
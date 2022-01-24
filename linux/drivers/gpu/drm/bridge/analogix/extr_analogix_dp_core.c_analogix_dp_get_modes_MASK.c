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
struct edid {int dummy; } ;
struct drm_connector {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  ddc; } ;
struct analogix_dp_device {TYPE_2__* plat_data; int /*<<< orphan*/  connector; int /*<<< orphan*/  dev; TYPE_1__ aux; } ;
struct TYPE_4__ {scalar_t__ (* get_modes ) (TYPE_2__*,struct drm_connector*) ;scalar_t__ panel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (struct analogix_dp_device*,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,struct edid*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct edid*) ; 
 struct edid* FUNC4 (struct drm_connector*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct edid*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_2__*,struct drm_connector*) ; 
 struct analogix_dp_device* FUNC10 (struct drm_connector*) ; 

__attribute__((used)) static int FUNC11(struct drm_connector *connector)
{
	struct analogix_dp_device *dp = FUNC10(connector);
	struct edid *edid;
	int ret, num_modes = 0;

	if (dp->plat_data->panel) {
		num_modes += FUNC5(dp->plat_data->panel);
	} else {
		ret = FUNC1(dp, true, false);
		if (ret) {
			FUNC0("Failed to prepare panel (%d)\n", ret);
			return 0;
		}

		FUNC7(dp->dev);
		edid = FUNC4(connector, &dp->aux.ddc);
		FUNC8(dp->dev);
		if (edid) {
			FUNC3(&dp->connector,
							   edid);
			num_modes += FUNC2(&dp->connector, edid);
			FUNC6(edid);
		}

		ret = FUNC1(dp, false, false);
		if (ret)
			FUNC0("Failed to unprepare panel (%d)\n", ret);
	}

	if (dp->plat_data->get_modes)
		num_modes += dp->plat_data->get_modes(dp->plat_data, connector);

	return num_modes;
}
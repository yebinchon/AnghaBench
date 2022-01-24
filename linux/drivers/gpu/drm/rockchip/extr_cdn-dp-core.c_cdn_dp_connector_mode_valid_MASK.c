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
typedef  int u8 ;
typedef  int u32 ;
struct drm_display_mode {int clock; } ;
struct drm_display_info {int bpc; } ;
struct drm_connector {int dummy; } ;
struct TYPE_2__ {struct drm_display_info display_info; } ;
struct cdn_dp_device {int lanes; int /*<<< orphan*/  dev; int /*<<< orphan*/  dpcd; int /*<<< orphan*/  connected; TYPE_1__ connector; } ;

/* Variables and functions */
 int /*<<< orphan*/  CDN_DP_MAX_LINK_RATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int MODE_BAD ; 
 int MODE_CLOCK_HIGH ; 
 int MODE_OK ; 
 struct cdn_dp_device* FUNC1 (struct drm_connector*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int,int) ; 

__attribute__((used)) static int FUNC6(struct drm_connector *connector,
				       struct drm_display_mode *mode)
{
	struct cdn_dp_device *dp = FUNC1(connector);
	struct drm_display_info *display_info = &dp->connector.display_info;
	u32 requested, actual, rate, sink_max, source_max = 0;
	u8 lanes, bpc;

	/* If DP is disconnected, every mode is invalid */
	if (!dp->connected)
		return MODE_BAD;

	switch (display_info->bpc) {
	case 10:
		bpc = 10;
		break;
	case 6:
		bpc = 6;
		break;
	default:
		bpc = 8;
		break;
	}

	requested = mode->clock * bpc * 3 / 1000;

	source_max = dp->lanes;
	sink_max = FUNC3(dp->dpcd);
	lanes = FUNC5(source_max, sink_max);

	source_max = FUNC2(CDN_DP_MAX_LINK_RATE);
	sink_max = FUNC4(dp->dpcd);
	rate = FUNC5(source_max, sink_max);

	actual = rate * lanes / 100;

	/* efficiency is about 0.8 */
	actual = actual * 8 / 10;

	if (requested > actual) {
		FUNC0(dp->dev,
				  "requested=%d, actual=%d, clock=%d\n",
				  requested, actual, mode->clock);
		return MODE_CLOCK_HIGH;
	}

	return MODE_OK;
}
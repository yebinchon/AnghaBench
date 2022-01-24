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
struct TYPE_2__ {int /*<<< orphan*/  sink_is_hdmi; } ;
struct rk3066_hdmi {TYPE_1__ hdmi_data; int /*<<< orphan*/  ddc; } ;
struct edid {int dummy; } ;
struct drm_connector {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct drm_connector*,struct edid*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_connector*,struct edid*) ; 
 int /*<<< orphan*/  FUNC2 (struct edid*) ; 
 struct edid* FUNC3 (struct drm_connector*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct edid*) ; 
 struct rk3066_hdmi* FUNC5 (struct drm_connector*) ; 

__attribute__((used)) static int FUNC6(struct drm_connector *connector)
{
	struct rk3066_hdmi *hdmi = FUNC5(connector);
	struct edid *edid;
	int ret = 0;

	if (!hdmi->ddc)
		return 0;

	edid = FUNC3(connector, hdmi->ddc);
	if (edid) {
		hdmi->hdmi_data.sink_is_hdmi = FUNC2(edid);
		FUNC1(connector, edid);
		ret = FUNC0(connector, edid);
		FUNC4(edid);
	}

	return ret;
}
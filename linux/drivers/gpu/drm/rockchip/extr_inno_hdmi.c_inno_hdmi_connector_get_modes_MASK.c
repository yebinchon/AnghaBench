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
struct TYPE_2__ {int /*<<< orphan*/  sink_has_audio; int /*<<< orphan*/  sink_is_hdmi; } ;
struct inno_hdmi {TYPE_1__ hdmi_data; int /*<<< orphan*/  ddc; } ;
struct edid {int dummy; } ;
struct drm_connector {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct drm_connector*,struct edid*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_connector*,struct edid*) ; 
 int /*<<< orphan*/  FUNC2 (struct edid*) ; 
 int /*<<< orphan*/  FUNC3 (struct edid*) ; 
 struct edid* FUNC4 (struct drm_connector*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct edid*) ; 
 struct inno_hdmi* FUNC6 (struct drm_connector*) ; 

__attribute__((used)) static int FUNC7(struct drm_connector *connector)
{
	struct inno_hdmi *hdmi = FUNC6(connector);
	struct edid *edid;
	int ret = 0;

	if (!hdmi->ddc)
		return 0;

	edid = FUNC4(connector, hdmi->ddc);
	if (edid) {
		hdmi->hdmi_data.sink_is_hdmi = FUNC2(edid);
		hdmi->hdmi_data.sink_has_audio = FUNC3(edid);
		FUNC1(connector, edid);
		ret = FUNC0(connector, edid);
		FUNC5(edid);
	}

	return ret;
}
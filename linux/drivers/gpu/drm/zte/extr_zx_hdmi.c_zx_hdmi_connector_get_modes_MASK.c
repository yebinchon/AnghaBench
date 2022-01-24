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
struct zx_hdmi {int /*<<< orphan*/  sink_has_audio; int /*<<< orphan*/  sink_is_hdmi; TYPE_1__* ddc; } ;
struct edid {int dummy; } ;
struct drm_connector {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  adap; } ;

/* Variables and functions */
 int FUNC0 (struct drm_connector*,struct edid*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_connector*,struct edid*) ; 
 int /*<<< orphan*/  FUNC2 (struct edid*) ; 
 int /*<<< orphan*/  FUNC3 (struct edid*) ; 
 struct edid* FUNC4 (struct drm_connector*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct edid*) ; 
 struct zx_hdmi* FUNC6 (struct drm_connector*) ; 

__attribute__((used)) static int FUNC7(struct drm_connector *connector)
{
	struct zx_hdmi *hdmi = FUNC6(connector);
	struct edid *edid;
	int ret;

	edid = FUNC4(connector, &hdmi->ddc->adap);
	if (!edid)
		return 0;

	hdmi->sink_is_hdmi = FUNC2(edid);
	hdmi->sink_has_audio = FUNC3(edid);
	FUNC1(connector, edid);
	ret = FUNC0(connector, edid);
	FUNC5(edid);

	return ret;
}
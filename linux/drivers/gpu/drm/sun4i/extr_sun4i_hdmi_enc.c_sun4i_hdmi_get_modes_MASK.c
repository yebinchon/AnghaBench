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
struct sun4i_hdmi {int /*<<< orphan*/  cec_adap; scalar_t__ hdmi_monitor; int /*<<< orphan*/  i2c; scalar_t__ ddc_i2c; } ;
struct edid {int dummy; } ;
struct drm_connector {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct edid*) ; 
 int FUNC2 (struct drm_connector*,struct edid*) ; 
 struct sun4i_hdmi* FUNC3 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_connector*,struct edid*) ; 
 scalar_t__ FUNC5 (struct edid*) ; 
 struct edid* FUNC6 (struct drm_connector*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct edid*) ; 

__attribute__((used)) static int FUNC8(struct drm_connector *connector)
{
	struct sun4i_hdmi *hdmi = FUNC3(connector);
	struct edid *edid;
	int ret;

	edid = FUNC6(connector, hdmi->ddc_i2c ?: hdmi->i2c);
	if (!edid)
		return 0;

	hdmi->hdmi_monitor = FUNC5(edid);
	FUNC0("Monitor is %s monitor\n",
			 hdmi->hdmi_monitor ? "an HDMI" : "a DVI");

	FUNC4(connector, edid);
	FUNC1(hdmi->cec_adap, edid);
	ret = FUNC2(connector, edid);
	FUNC7(edid);

	return ret;
}
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
struct sti_hdmi_connector {struct sti_hdmi* hdmi; } ;
struct sti_hdmi {int /*<<< orphan*/  notifier; scalar_t__ hdmi_monitor; int /*<<< orphan*/  ddc_adapt; } ;
struct edid {int /*<<< orphan*/  height_cm; int /*<<< orphan*/  width_cm; } ;
struct drm_connector {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct edid*) ; 
 int FUNC4 (struct drm_connector*,struct edid*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_connector*,struct edid*) ; 
 scalar_t__ FUNC6 (struct edid*) ; 
 struct edid* FUNC7 (struct drm_connector*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct edid*) ; 
 struct sti_hdmi_connector* FUNC9 (struct drm_connector*) ; 

__attribute__((used)) static int FUNC10(struct drm_connector *connector)
{
	struct sti_hdmi_connector *hdmi_connector
		= FUNC9(connector);
	struct sti_hdmi *hdmi = hdmi_connector->hdmi;
	struct edid *edid;
	int count;

	FUNC0("\n");

	edid = FUNC7(connector, hdmi->ddc_adapt);
	if (!edid)
		goto fail;

	hdmi->hdmi_monitor = FUNC6(edid);
	FUNC1("%s : %dx%d cm\n",
		      (hdmi->hdmi_monitor ? "hdmi monitor" : "dvi monitor"),
		      edid->width_cm, edid->height_cm);
	FUNC3(hdmi->notifier, edid);

	count = FUNC4(connector, edid);
	FUNC5(connector, edid);

	FUNC8(edid);
	return count;

fail:
	FUNC2("Can't read HDMI EDID\n");
	return 0;
}
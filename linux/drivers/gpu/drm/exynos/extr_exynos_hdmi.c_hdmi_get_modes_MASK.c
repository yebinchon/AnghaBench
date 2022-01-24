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
struct hdmi_context {int dvi_mode; int /*<<< orphan*/  notifier; int /*<<< orphan*/  dev; int /*<<< orphan*/  ddc_adpt; } ;
struct edid {int /*<<< orphan*/  height_cm; int /*<<< orphan*/  width_cm; } ;
struct drm_connector {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct edid*) ; 
 struct hdmi_context* FUNC2 (struct drm_connector*) ; 
 int FUNC3 (struct drm_connector*,struct edid*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_connector*,struct edid*) ; 
 int /*<<< orphan*/  FUNC5 (struct edid*) ; 
 struct edid* FUNC6 (struct drm_connector*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct edid*) ; 

__attribute__((used)) static int FUNC8(struct drm_connector *connector)
{
	struct hdmi_context *hdata = FUNC2(connector);
	struct edid *edid;
	int ret;

	if (!hdata->ddc_adpt)
		return -ENODEV;

	edid = FUNC6(connector, hdata->ddc_adpt);
	if (!edid)
		return -ENODEV;

	hdata->dvi_mode = !FUNC5(edid);
	FUNC0(hdata->dev, "%s : width[%d] x height[%d]\n",
			  (hdata->dvi_mode ? "dvi monitor" : "hdmi monitor"),
			  edid->width_cm, edid->height_cm);

	FUNC4(connector, edid);
	FUNC1(hdata->notifier, edid);

	ret = FUNC3(connector, edid);

	FUNC7(edid);

	return ret;
}
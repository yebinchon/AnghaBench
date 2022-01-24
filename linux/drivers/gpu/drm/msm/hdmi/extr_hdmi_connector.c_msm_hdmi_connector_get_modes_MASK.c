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
typedef  int uint32_t ;
struct hdmi_connector {struct hdmi* hdmi; } ;
struct hdmi {int /*<<< orphan*/  hdmi_mode; int /*<<< orphan*/  i2c; } ;
struct edid {int dummy; } ;
struct drm_connector {int dummy; } ;

/* Variables and functions */
 int HDMI_CTRL_ENABLE ; 
 int /*<<< orphan*/  REG_HDMI_CTRL ; 
 int FUNC0 (struct drm_connector*,struct edid*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_connector*,struct edid*) ; 
 int /*<<< orphan*/  FUNC2 (struct edid*) ; 
 struct edid* FUNC3 (struct drm_connector*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct hdmi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hdmi*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct edid*) ; 
 struct hdmi_connector* FUNC7 (struct drm_connector*) ; 

__attribute__((used)) static int FUNC8(struct drm_connector *connector)
{
	struct hdmi_connector *hdmi_connector = FUNC7(connector);
	struct hdmi *hdmi = hdmi_connector->hdmi;
	struct edid *edid;
	uint32_t hdmi_ctrl;
	int ret = 0;

	hdmi_ctrl = FUNC4(hdmi, REG_HDMI_CTRL);
	FUNC5(hdmi, REG_HDMI_CTRL, hdmi_ctrl | HDMI_CTRL_ENABLE);

	edid = FUNC3(connector, hdmi->i2c);

	FUNC5(hdmi, REG_HDMI_CTRL, hdmi_ctrl);

	hdmi->hdmi_mode = FUNC2(edid);
	FUNC1(connector, edid);

	if (edid) {
		ret = FUNC0(connector, edid);
		FUNC6(edid);
	}

	return ret;
}
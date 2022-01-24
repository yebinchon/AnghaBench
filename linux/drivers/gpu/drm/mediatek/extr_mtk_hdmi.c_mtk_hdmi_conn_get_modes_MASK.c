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
struct mtk_hdmi {int dvi_mode; int /*<<< orphan*/  ddc_adpt; } ;
struct edid {int dummy; } ;
struct drm_connector {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (struct drm_connector*,struct edid*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_connector*,struct edid*) ; 
 int /*<<< orphan*/  FUNC2 (struct edid*) ; 
 struct edid* FUNC3 (struct drm_connector*,int /*<<< orphan*/ ) ; 
 struct mtk_hdmi* FUNC4 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC5 (struct edid*) ; 

__attribute__((used)) static int FUNC6(struct drm_connector *conn)
{
	struct mtk_hdmi *hdmi = FUNC4(conn);
	struct edid *edid;
	int ret;

	if (!hdmi->ddc_adpt)
		return -ENODEV;

	edid = FUNC3(conn, hdmi->ddc_adpt);
	if (!edid)
		return -ENODEV;

	hdmi->dvi_mode = !FUNC2(edid);

	FUNC1(conn, edid);

	ret = FUNC0(conn, edid);
	FUNC5(edid);
	return ret;
}
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
typedef  int /*<<< orphan*/  u8 ;
struct omap_hdmi {int core_enabled; int /*<<< orphan*/  core; } ;
struct omap_dss_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEC_PHYS_ADDR_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 struct omap_hdmi* FUNC1 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct omap_hdmi*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6(struct omap_dss_device *dssdev,
		u8 *edid, int len)
{
	struct omap_hdmi *hdmi = FUNC1(dssdev);
	bool need_enable;
	int r;

	need_enable = hdmi->core_enabled == false;

	if (need_enable) {
		r = FUNC4(&hdmi->core);
		if (r)
			return r;
	}

	r = FUNC5(hdmi, edid, len);
	if (r >= 256)
		FUNC2(&hdmi->core,
					FUNC0(edid, r, NULL));
	else
		FUNC2(&hdmi->core, CEC_PHYS_ADDR_INVALID);
	if (need_enable)
		FUNC3(&hdmi->core);

	return r;
}
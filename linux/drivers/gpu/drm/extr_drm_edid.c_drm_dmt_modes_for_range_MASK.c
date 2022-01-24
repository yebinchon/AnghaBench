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
struct edid {int dummy; } ;
struct drm_display_mode {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_connector {struct drm_device* dev; } ;
struct detailed_timing {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * drm_dmt_modes ; 
 struct drm_display_mode* FUNC1 (struct drm_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_connector*,struct drm_display_mode*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,struct edid*,struct detailed_timing*) ; 
 scalar_t__ FUNC4 (struct drm_connector*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(struct drm_connector *connector, struct edid *edid,
			struct detailed_timing *timing)
{
	int i, modes = 0;
	struct drm_display_mode *newmode;
	struct drm_device *dev = connector->dev;

	for (i = 0; i < FUNC0(drm_dmt_modes); i++) {
		if (FUNC3(drm_dmt_modes + i, edid, timing) &&
		    FUNC4(connector, drm_dmt_modes + i)) {
			newmode = FUNC1(dev, &drm_dmt_modes[i]);
			if (newmode) {
				FUNC2(connector, newmode);
				modes++;
			}
		}
	}

	return modes;
}
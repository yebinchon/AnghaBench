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
struct drm_display_mode {int hdisplay; int vdisplay; } ;
struct drm_device {int dummy; } ;
struct drm_connector {struct drm_device* dev; } ;

/* Variables and functions */
 int FUNC0 (struct drm_display_mode*) ; 
 struct drm_display_mode* drm_dmt_modes ; 
 struct drm_display_mode* FUNC1 (struct drm_device*,struct drm_display_mode const*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_connector*,struct drm_display_mode*) ; 
 int FUNC3 (struct drm_display_mode const*) ; 

int FUNC4(struct drm_connector *connector,
			int hdisplay, int vdisplay)
{
	int i, count, num_modes = 0;
	struct drm_display_mode *mode;
	struct drm_device *dev = connector->dev;

	count = FUNC0(drm_dmt_modes);
	if (hdisplay < 0)
		hdisplay = 0;
	if (vdisplay < 0)
		vdisplay = 0;

	for (i = 0; i < count; i++) {
		const struct drm_display_mode *ptr = &drm_dmt_modes[i];
		if (hdisplay && vdisplay) {
			/*
			 * Only when two are valid, they will be used to check
			 * whether the mode should be added to the mode list of
			 * the connector.
			 */
			if (ptr->hdisplay > hdisplay ||
					ptr->vdisplay > vdisplay)
				continue;
		}
		if (FUNC3(ptr) > 61)
			continue;
		mode = FUNC1(dev, ptr);
		if (mode) {
			FUNC2(connector, mode);
			num_modes++;
		}
	}
	return num_modes;
}
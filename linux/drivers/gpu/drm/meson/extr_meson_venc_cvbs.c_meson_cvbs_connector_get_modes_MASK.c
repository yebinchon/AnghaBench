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
struct meson_cvbs_mode {int /*<<< orphan*/  mode; } ;
struct drm_display_mode {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_connector {struct drm_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int MESON_CVBS_MODES_COUNT ; 
 struct drm_display_mode* FUNC1 (struct drm_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_connector*,struct drm_display_mode*) ; 
 struct meson_cvbs_mode* meson_cvbs_modes ; 

__attribute__((used)) static int FUNC3(struct drm_connector *connector)
{
	struct drm_device *dev = connector->dev;
	struct drm_display_mode *mode;
	int i;

	for (i = 0; i < MESON_CVBS_MODES_COUNT; ++i) {
		struct meson_cvbs_mode *meson_mode = &meson_cvbs_modes[i];

		mode = FUNC1(dev, &meson_mode->mode);
		if (!mode) {
			FUNC0("Failed to create a new display mode\n");
			return 0;
		}

		FUNC2(connector, mode);
	}

	return i;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {struct drm_device* drm; struct drm_connector* connector; } ;
struct panel_simple {TYPE_2__* desc; TYPE_1__ base; } ;
struct drm_display_mode {int /*<<< orphan*/  type; int /*<<< orphan*/  vrefresh; int /*<<< orphan*/  vdisplay; int /*<<< orphan*/  hdisplay; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;
struct drm_connector {int dummy; } ;
struct TYPE_4__ {unsigned int num_modes; struct drm_display_mode* modes; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_TYPE_DRIVER ; 
 int /*<<< orphan*/  DRM_MODE_TYPE_PREFERRED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct drm_display_mode* FUNC1 (struct drm_device*,struct drm_display_mode const*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_connector*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_display_mode*) ; 

__attribute__((used)) static unsigned int FUNC4(struct panel_simple *panel)
{
	struct drm_connector *connector = panel->base.connector;
	struct drm_device *drm = panel->base.drm;
	struct drm_display_mode *mode;
	unsigned int i, num = 0;

	for (i = 0; i < panel->desc->num_modes; i++) {
		const struct drm_display_mode *m = &panel->desc->modes[i];

		mode = FUNC1(drm, m);
		if (!mode) {
			FUNC0(drm->dev, "failed to add mode %ux%u@%u\n",
				m->hdisplay, m->vdisplay, m->vrefresh);
			continue;
		}

		mode->type |= DRM_MODE_TYPE_DRIVER;

		if (panel->desc->num_modes == 1)
			mode->type |= DRM_MODE_TYPE_PREFERRED;

		FUNC3(mode);

		FUNC2(connector, mode);
		num++;
	}

	return num;
}
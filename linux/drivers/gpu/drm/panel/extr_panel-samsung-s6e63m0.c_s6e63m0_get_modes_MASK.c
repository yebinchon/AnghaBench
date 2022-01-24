#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct drm_panel {int /*<<< orphan*/  drm; struct drm_connector* connector; } ;
struct drm_display_mode {int type; } ;
struct drm_connector {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  vrefresh; int /*<<< orphan*/  vdisplay; int /*<<< orphan*/  hdisplay; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int DRM_MODE_TYPE_DRIVER ; 
 int DRM_MODE_TYPE_PREFERRED ; 
 int ENOMEM ; 
 TYPE_1__ default_mode ; 
 struct drm_display_mode* FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_connector*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_display_mode*) ; 

__attribute__((used)) static int FUNC4(struct drm_panel *panel)
{
	struct drm_connector *connector = panel->connector;
	struct drm_display_mode *mode;

	mode = FUNC1(panel->drm, &default_mode);
	if (!mode) {
		FUNC0("failed to add mode %ux%ux@%u\n",
			  default_mode.hdisplay, default_mode.vdisplay,
			  default_mode.vrefresh);
		return -ENOMEM;
	}

	FUNC3(mode);

	mode->type = DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED;
	FUNC2(connector, mode);

	return 1;
}
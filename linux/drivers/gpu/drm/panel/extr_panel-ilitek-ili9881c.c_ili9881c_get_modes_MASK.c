#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ili9881c {TYPE_1__* dsi; } ;
struct drm_panel {struct drm_connector* connector; int /*<<< orphan*/  drm; } ;
struct drm_display_mode {int type; } ;
struct TYPE_6__ {int width_mm; int height_mm; } ;
struct drm_connector {TYPE_2__ display_info; } ;
struct TYPE_7__ {int /*<<< orphan*/  vrefresh; int /*<<< orphan*/  vdisplay; int /*<<< orphan*/  hdisplay; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int DRM_MODE_TYPE_DRIVER ; 
 int DRM_MODE_TYPE_PREFERRED ; 
 int ENOMEM ; 
 TYPE_3__ bananapi_default_mode ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct drm_display_mode* FUNC1 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_connector*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_display_mode*) ; 
 struct ili9881c* FUNC4 (struct drm_panel*) ; 

__attribute__((used)) static int FUNC5(struct drm_panel *panel)
{
	struct drm_connector *connector = panel->connector;
	struct ili9881c *ctx = FUNC4(panel);
	struct drm_display_mode *mode;

	mode = FUNC1(panel->drm, &bananapi_default_mode);
	if (!mode) {
		FUNC0(&ctx->dsi->dev, "failed to add mode %ux%ux@%u\n",
			bananapi_default_mode.hdisplay,
			bananapi_default_mode.vdisplay,
			bananapi_default_mode.vrefresh);
		return -ENOMEM;
	}

	FUNC3(mode);

	mode->type = DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED;
	FUNC2(connector, mode);

	panel->connector->display_info.width_mm = 62;
	panel->connector->display_info.height_mm = 110;

	return 1;
}
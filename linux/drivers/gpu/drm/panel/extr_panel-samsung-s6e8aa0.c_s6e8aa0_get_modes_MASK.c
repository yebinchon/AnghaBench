#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct s6e8aa0 {int /*<<< orphan*/  height_mm; int /*<<< orphan*/  width_mm; int /*<<< orphan*/  vm; } ;
struct drm_panel {struct drm_connector* connector; } ;
struct drm_display_mode {int type; int /*<<< orphan*/  height_mm; int /*<<< orphan*/  width_mm; } ;
struct TYPE_2__ {int /*<<< orphan*/  height_mm; int /*<<< orphan*/  width_mm; } ;
struct drm_connector {TYPE_1__ display_info; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int DRM_MODE_TYPE_DRIVER ; 
 int DRM_MODE_TYPE_PREFERRED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct drm_display_mode*) ; 
 struct drm_display_mode* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_connector*,struct drm_display_mode*) ; 
 struct s6e8aa0* FUNC4 (struct drm_panel*) ; 

__attribute__((used)) static int FUNC5(struct drm_panel *panel)
{
	struct drm_connector *connector = panel->connector;
	struct s6e8aa0 *ctx = FUNC4(panel);
	struct drm_display_mode *mode;

	mode = FUNC2(connector->dev);
	if (!mode) {
		FUNC0("failed to create a new display mode\n");
		return 0;
	}

	FUNC1(&ctx->vm, mode);
	mode->width_mm = ctx->width_mm;
	mode->height_mm = ctx->height_mm;
	connector->display_info.width_mm = mode->width_mm;
	connector->display_info.height_mm = mode->height_mm;

	mode->type = DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED;
	FUNC3(connector, mode);

	return 1;
}
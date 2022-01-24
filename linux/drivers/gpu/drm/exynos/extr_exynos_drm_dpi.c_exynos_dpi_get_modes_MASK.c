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
struct exynos_dpi {TYPE_2__* panel; scalar_t__ vm; int /*<<< orphan*/  dev; } ;
struct drm_display_mode {int type; } ;
struct drm_connector {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {TYPE_1__* funcs; } ;
struct TYPE_3__ {int (* get_modes ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int DRM_MODE_TYPE_DRIVER ; 
 int DRM_MODE_TYPE_PREFERRED ; 
 struct exynos_dpi* FUNC1 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,struct drm_display_mode*) ; 
 struct drm_display_mode* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_connector*,struct drm_display_mode*) ; 
 int FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC6(struct drm_connector *connector)
{
	struct exynos_dpi *ctx = FUNC1(connector);

	/* fimd timings gets precedence over panel modes */
	if (ctx->vm) {
		struct drm_display_mode *mode;

		mode = FUNC3(connector->dev);
		if (!mode) {
			FUNC0(ctx->dev,
				      "failed to create a new display mode\n");
			return 0;
		}
		FUNC2(ctx->vm, mode);
		mode->type = DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED;
		FUNC4(connector, mode);
		return 1;
	}

	if (ctx->panel)
		return ctx->panel->funcs->get_modes(ctx->panel);

	return 0;
}
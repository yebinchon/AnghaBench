#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct st7701 {TYPE_1__* dsi; TYPE_3__* desc; } ;
struct drm_panel {TYPE_4__* connector; int /*<<< orphan*/  drm; } ;
struct drm_display_mode {int /*<<< orphan*/  height_mm; int /*<<< orphan*/  width_mm; int /*<<< orphan*/  vrefresh; int /*<<< orphan*/  vdisplay; int /*<<< orphan*/  hdisplay; } ;
struct TYPE_6__ {int /*<<< orphan*/  height_mm; int /*<<< orphan*/  width_mm; } ;
struct TYPE_8__ {TYPE_2__ display_info; } ;
struct TYPE_7__ {struct drm_display_mode* mode; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 struct drm_display_mode* FUNC1 (int /*<<< orphan*/ ,struct drm_display_mode const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_display_mode*) ; 
 struct st7701* FUNC4 (struct drm_panel*) ; 

__attribute__((used)) static int FUNC5(struct drm_panel *panel)
{
	struct st7701 *st7701 = FUNC4(panel);
	const struct drm_display_mode *desc_mode = st7701->desc->mode;
	struct drm_display_mode *mode;

	mode = FUNC1(panel->drm, desc_mode);
	if (!mode) {
		FUNC0(&st7701->dsi->dev,
			      "failed to add mode %ux%ux@%u\n",
			      desc_mode->hdisplay, desc_mode->vdisplay,
			      desc_mode->vrefresh);
		return -ENOMEM;
	}

	FUNC3(mode);
	FUNC2(panel->connector, mode);

	panel->connector->display_info.width_mm = desc_mode->width_mm;
	panel->connector->display_info.height_mm = desc_mode->height_mm;

	return 1;
}
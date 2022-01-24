#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct jdi_panel {TYPE_2__* dsi; } ;
struct drm_panel {TYPE_3__* connector; int /*<<< orphan*/  drm; } ;
struct drm_display_mode {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  vrefresh; int /*<<< orphan*/  vdisplay; int /*<<< orphan*/  hdisplay; } ;
struct TYPE_6__ {int width_mm; int height_mm; } ;
struct TYPE_8__ {TYPE_1__ display_info; } ;
struct TYPE_7__ {struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 TYPE_4__ default_mode ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct drm_display_mode* FUNC1 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_display_mode*) ; 
 struct jdi_panel* FUNC4 (struct drm_panel*) ; 

__attribute__((used)) static int FUNC5(struct drm_panel *panel)
{
	struct drm_display_mode *mode;
	struct jdi_panel *jdi = FUNC4(panel);
	struct device *dev = &jdi->dsi->dev;

	mode = FUNC1(panel->drm, &default_mode);
	if (!mode) {
		FUNC0(dev, "failed to add mode %ux%ux@%u\n",
			default_mode.hdisplay, default_mode.vdisplay,
			default_mode.vrefresh);
		return -ENOMEM;
	}

	FUNC3(mode);

	FUNC2(panel->connector, mode);

	panel->connector->display_info.width_mm = 95;
	panel->connector->display_info.height_mm = 151;

	return 1;
}
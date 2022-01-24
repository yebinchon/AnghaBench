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
struct panel_lvds {TYPE_2__* backlight; } ;
struct drm_panel {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  power; int /*<<< orphan*/  state; } ;
struct TYPE_4__ {TYPE_1__ props; } ;

/* Variables and functions */
 int /*<<< orphan*/  BL_CORE_FBBLANK ; 
 int /*<<< orphan*/  FB_BLANK_UNBLANK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 struct panel_lvds* FUNC1 (struct drm_panel*) ; 

__attribute__((used)) static int FUNC2(struct drm_panel *panel)
{
	struct panel_lvds *lvds = FUNC1(panel);

	if (lvds->backlight) {
		lvds->backlight->props.state &= ~BL_CORE_FBBLANK;
		lvds->backlight->props.power = FB_BLANK_UNBLANK;
		FUNC0(lvds->backlight);
	}

	return 0;
}
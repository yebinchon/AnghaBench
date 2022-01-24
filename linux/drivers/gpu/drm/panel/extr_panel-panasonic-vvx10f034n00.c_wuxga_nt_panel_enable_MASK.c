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
struct wuxga_nt_panel {int enabled; TYPE_2__* backlight; } ;
struct drm_panel {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  state; int /*<<< orphan*/  power; } ;
struct TYPE_4__ {TYPE_1__ props; } ;

/* Variables and functions */
 int /*<<< orphan*/  BL_CORE_FBBLANK ; 
 int /*<<< orphan*/  FB_BLANK_UNBLANK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 struct wuxga_nt_panel* FUNC1 (struct drm_panel*) ; 

__attribute__((used)) static int FUNC2(struct drm_panel *panel)
{
	struct wuxga_nt_panel *wuxga_nt = FUNC1(panel);

	if (wuxga_nt->enabled)
		return 0;

	if (wuxga_nt->backlight) {
		wuxga_nt->backlight->props.power = FB_BLANK_UNBLANK;
		wuxga_nt->backlight->props.state &= ~BL_CORE_FBBLANK;
		FUNC0(wuxga_nt->backlight);
	}

	wuxga_nt->enabled = true;

	return 0;
}
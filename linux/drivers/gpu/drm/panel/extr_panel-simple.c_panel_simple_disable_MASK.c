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
struct panel_simple {int enabled; TYPE_2__* desc; TYPE_4__* backlight; } ;
struct drm_panel {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  state; int /*<<< orphan*/  power; } ;
struct TYPE_8__ {TYPE_3__ props; } ;
struct TYPE_5__ {scalar_t__ disable; } ;
struct TYPE_6__ {TYPE_1__ delay; } ;

/* Variables and functions */
 int /*<<< orphan*/  BL_CORE_FBBLANK ; 
 int /*<<< orphan*/  FB_BLANK_POWERDOWN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct panel_simple* FUNC2 (struct drm_panel*) ; 

__attribute__((used)) static int FUNC3(struct drm_panel *panel)
{
	struct panel_simple *p = FUNC2(panel);

	if (!p->enabled)
		return 0;

	if (p->backlight) {
		p->backlight->props.power = FB_BLANK_POWERDOWN;
		p->backlight->props.state |= BL_CORE_FBBLANK;
		FUNC0(p->backlight);
	}

	if (p->desc->delay.disable)
		FUNC1(p->desc->delay.disable);

	p->enabled = false;

	return 0;
}
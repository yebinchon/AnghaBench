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
struct videomode {int dummy; } ;
struct TYPE_2__ {int type; } ;
struct panel_simple {TYPE_1__ override_mode; struct panel_desc* desc; } ;
struct panel_desc {int num_modes; unsigned int num_timings; struct display_timing* timings; } ;
struct display_timing {scalar_t__ flags; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int DRM_MODE_TYPE_DRIVER ; 
 int DRM_MODE_TYPE_PREFERRED ; 
 int /*<<< orphan*/  FUNC0 (struct display_timing const*,struct display_timing const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct videomode*,TYPE_1__*) ; 
 int /*<<< orphan*/  hactive ; 
 int /*<<< orphan*/  hback_porch ; 
 int /*<<< orphan*/  hfront_porch ; 
 int /*<<< orphan*/  hsync_len ; 
 int /*<<< orphan*/  vactive ; 
 int /*<<< orphan*/  vback_porch ; 
 int /*<<< orphan*/  vfront_porch ; 
 int /*<<< orphan*/  FUNC4 (struct display_timing const*,struct videomode*) ; 
 int /*<<< orphan*/  vsync_len ; 

__attribute__((used)) static void FUNC5(struct device *dev,
						 struct panel_simple *panel,
						 const struct display_timing *ot)
{
	const struct panel_desc *desc = panel->desc;
	struct videomode vm;
	unsigned int i;

	if (FUNC1(desc->num_modes)) {
		FUNC2(dev, "Reject override mode: panel has a fixed mode\n");
		return;
	}
	if (FUNC1(!desc->num_timings)) {
		FUNC2(dev, "Reject override mode: no timings specified\n");
		return;
	}

	for (i = 0; i < panel->desc->num_timings; i++) {
		const struct display_timing *dt = &panel->desc->timings[i];

		if (!FUNC0(ot, dt, hactive) ||
		    !FUNC0(ot, dt, hfront_porch) ||
		    !FUNC0(ot, dt, hback_porch) ||
		    !FUNC0(ot, dt, hsync_len) ||
		    !FUNC0(ot, dt, vactive) ||
		    !FUNC0(ot, dt, vfront_porch) ||
		    !FUNC0(ot, dt, vback_porch) ||
		    !FUNC0(ot, dt, vsync_len))
			continue;

		if (ot->flags != dt->flags)
			continue;

		FUNC4(ot, &vm);
		FUNC3(&vm, &panel->override_mode);
		panel->override_mode.type |= DRM_MODE_TYPE_DRIVER |
					     DRM_MODE_TYPE_PREFERRED;
		break;
	}

	if (FUNC1(!panel->override_mode.type))
		FUNC2(dev, "Reject override mode: No display_timing found\n");
}
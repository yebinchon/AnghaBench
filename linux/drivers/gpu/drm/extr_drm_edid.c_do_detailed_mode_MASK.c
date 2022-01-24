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
struct drm_display_mode {int /*<<< orphan*/  type; } ;
struct detailed_timing {scalar_t__ pixel_clock; } ;
struct detailed_mode_closure {int preferred; int /*<<< orphan*/  modes; TYPE_1__* connector; int /*<<< orphan*/  quirks; int /*<<< orphan*/  edid; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_TYPE_PREFERRED ; 
 struct drm_display_mode* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct detailed_timing*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_display_mode*) ; 

__attribute__((used)) static void
FUNC3(struct detailed_timing *timing, void *c)
{
	struct detailed_mode_closure *closure = c;
	struct drm_display_mode *newmode;

	if (timing->pixel_clock) {
		newmode = FUNC0(closure->connector->dev,
					    closure->edid, timing,
					    closure->quirks);
		if (!newmode)
			return;

		if (closure->preferred)
			newmode->type |= DRM_MODE_TYPE_PREFERRED;

		/*
		 * Detailed modes are limited to 10kHz pixel clock resolution,
		 * so fix up anything that looks like CEA/HDMI mode, but the clock
		 * is just slightly off.
		 */
		FUNC2(newmode);

		FUNC1(closure->connector, newmode);
		closure->modes++;
		closure->preferred = false;
	}
}
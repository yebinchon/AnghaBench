#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int type; } ;
struct TYPE_6__ {struct drm_device* drm; struct drm_connector* connector; } ;
struct panel_simple {TYPE_3__* desc; TYPE_4__ override_mode; TYPE_1__ base; } ;
struct drm_display_mode {int dummy; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;
struct TYPE_10__ {int /*<<< orphan*/  bus_flags; int /*<<< orphan*/  height_mm; int /*<<< orphan*/  width_mm; int /*<<< orphan*/  bpc; } ;
struct drm_connector {TYPE_5__ display_info; } ;
struct TYPE_7__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_8__ {int /*<<< orphan*/  bus_flags; int /*<<< orphan*/  bus_format; TYPE_2__ size; int /*<<< orphan*/  bpc; scalar_t__ num_modes; scalar_t__ num_timings; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ *,int) ; 
 struct drm_display_mode* FUNC3 (struct drm_device*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_connector*,struct drm_display_mode*) ; 
 unsigned int FUNC5 (struct panel_simple*) ; 
 unsigned int FUNC6 (struct panel_simple*) ; 

__attribute__((used)) static int FUNC7(struct panel_simple *panel)
{
	struct drm_connector *connector = panel->base.connector;
	struct drm_device *drm = panel->base.drm;
	struct drm_display_mode *mode;
	bool has_override = panel->override_mode.type;
	unsigned int num = 0;

	if (!panel->desc)
		return 0;

	if (has_override) {
		mode = FUNC3(drm, &panel->override_mode);
		if (mode) {
			FUNC4(connector, mode);
			num = 1;
		} else {
			FUNC1(drm->dev, "failed to add override mode\n");
		}
	}

	/* Only add timings if override was not there or failed to validate */
	if (num == 0 && panel->desc->num_timings)
		num = FUNC6(panel);

	/*
	 * Only add fixed modes if timings/override added no mode.
	 *
	 * We should only ever have either the display timings specified
	 * or a fixed mode. Anything else is rather bogus.
	 */
	FUNC0(panel->desc->num_timings && panel->desc->num_modes);
	if (num == 0)
		num = FUNC5(panel);

	connector->display_info.bpc = panel->desc->bpc;
	connector->display_info.width_mm = panel->desc->size.width;
	connector->display_info.height_mm = panel->desc->size.height;
	if (panel->desc->bus_format)
		FUNC2(&connector->display_info,
						 &panel->desc->bus_format, 1);
	connector->display_info.bus_flags = panel->desc->bus_flags;

	return num;
}
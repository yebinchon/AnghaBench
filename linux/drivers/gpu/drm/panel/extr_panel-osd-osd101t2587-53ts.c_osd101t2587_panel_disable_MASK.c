#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct osd101t2587_panel {int enabled; int /*<<< orphan*/  dsi; int /*<<< orphan*/  backlight; } ;
struct drm_panel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct osd101t2587_panel* FUNC2 (struct drm_panel*) ; 

__attribute__((used)) static int FUNC3(struct drm_panel *panel)
{
	struct osd101t2587_panel *osd101t2587 = FUNC2(panel);
	int ret;

	if (!osd101t2587->enabled)
		return 0;

	FUNC0(osd101t2587->backlight);

	ret = FUNC1(osd101t2587->dsi);

	osd101t2587->enabled = false;

	return ret;
}
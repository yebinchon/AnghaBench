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
struct panel_simple {scalar_t__ ddc; } ;
struct edid {int dummy; } ;
struct drm_panel {int /*<<< orphan*/  connector; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct edid*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct edid*) ; 
 struct edid* FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct edid*) ; 
 scalar_t__ FUNC4 (struct panel_simple*) ; 
 struct panel_simple* FUNC5 (struct drm_panel*) ; 

__attribute__((used)) static int FUNC6(struct drm_panel *panel)
{
	struct panel_simple *p = FUNC5(panel);
	int num = 0;

	/* probe EDID if a DDC bus is available */
	if (p->ddc) {
		struct edid *edid = FUNC2(panel->connector, p->ddc);
		FUNC1(panel->connector, edid);
		if (edid) {
			num += FUNC0(panel->connector, edid);
			FUNC3(edid);
		}
	}

	/* add hard-coded panel modes */
	num += FUNC4(p);

	return num;
}
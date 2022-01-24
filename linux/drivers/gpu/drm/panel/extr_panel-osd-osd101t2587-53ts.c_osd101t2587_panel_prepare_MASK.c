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
struct osd101t2587_panel {int prepared; int /*<<< orphan*/  supply; } ;
struct drm_panel {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct osd101t2587_panel* FUNC1 (struct drm_panel*) ; 

__attribute__((used)) static int FUNC2(struct drm_panel *panel)
{
	struct osd101t2587_panel *osd101t2587 = FUNC1(panel);
	int ret;

	if (osd101t2587->prepared)
		return 0;

	ret = FUNC0(osd101t2587->supply);
	if (!ret)
		osd101t2587->prepared = true;

	return ret;
}
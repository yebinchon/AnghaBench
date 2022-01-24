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
struct rad_panel {int prepared; int /*<<< orphan*/  supplies; int /*<<< orphan*/  num_supplies; scalar_t__ reset; } ;
struct drm_panel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rad_panel* FUNC2 (struct drm_panel*) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(struct drm_panel *panel)
{
	struct rad_panel *rad = FUNC2(panel);
	int ret;

	if (!rad->prepared)
		return 0;

	/*
	 * Right after asserting the reset, we need to release it, so that the
	 * touch driver can have an active connection with the touch controller
	 * even after the display is turned off.
	 */
	if (rad->reset) {
		FUNC0(rad->reset, 1);
		FUNC3(15000, 17000);
		FUNC0(rad->reset, 0);
	}

	ret = FUNC1(rad->num_supplies, rad->supplies);
	if (ret)
		return ret;

	rad->prepared = false;

	return 0;
}
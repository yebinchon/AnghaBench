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
struct ptn3460_bridge {int enabled; int /*<<< orphan*/  panel; int /*<<< orphan*/  gpio_rst_n; int /*<<< orphan*/  gpio_pd_n; } ;
struct drm_bridge {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 struct ptn3460_bridge* FUNC1 (struct drm_bridge*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (struct ptn3460_bridge*) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static void FUNC7(struct drm_bridge *bridge)
{
	struct ptn3460_bridge *ptn_bridge = FUNC1(bridge);
	int ret;

	if (ptn_bridge->enabled)
		return;

	FUNC3(ptn_bridge->gpio_pd_n, 1);

	FUNC3(ptn_bridge->gpio_rst_n, 0);
	FUNC6(10, 20);
	FUNC3(ptn_bridge->gpio_rst_n, 1);

	if (FUNC2(ptn_bridge->panel)) {
		FUNC0("failed to prepare panel\n");
		return;
	}

	/*
	 * There's a bug in the PTN chip where it falsely asserts hotplug before
	 * it is fully functional. We're forced to wait for the maximum start up
	 * time specified in the chip's datasheet to make sure we're really up.
	 */
	FUNC4(90);

	ret = FUNC5(ptn_bridge);
	if (ret)
		FUNC0("Select EDID failed ret=%d\n", ret);

	ptn_bridge->enabled = true;
}
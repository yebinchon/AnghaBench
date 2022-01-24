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
struct ptn3460_bridge {int enabled; int /*<<< orphan*/  gpio_pd_n; int /*<<< orphan*/  gpio_rst_n; int /*<<< orphan*/  panel; } ;
struct drm_bridge {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct ptn3460_bridge* FUNC1 (struct drm_bridge*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct drm_bridge *bridge)
{
	struct ptn3460_bridge *ptn_bridge = FUNC1(bridge);

	if (!ptn_bridge->enabled)
		return;

	ptn_bridge->enabled = false;

	if (FUNC2(ptn_bridge->panel)) {
		FUNC0("failed to disable panel\n");
		return;
	}

	FUNC3(ptn_bridge->gpio_rst_n, 1);
	FUNC3(ptn_bridge->gpio_pd_n, 0);
}
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
struct ptn3460_bridge {int /*<<< orphan*/  panel; } ;
struct drm_bridge {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct ptn3460_bridge* FUNC1 (struct drm_bridge*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct drm_bridge *bridge)
{
	struct ptn3460_bridge *ptn_bridge = FUNC1(bridge);

	if (FUNC2(ptn_bridge->panel)) {
		FUNC0("failed to enable panel\n");
		return;
	}
}
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
struct ps8622_bridge {int /*<<< orphan*/  panel; } ;
struct drm_bridge {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  PS8622_PWMO_END_T12_MS ; 
 struct ps8622_bridge* FUNC1 (struct drm_bridge*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct drm_bridge *bridge)
{
	struct ps8622_bridge *ps8622 = FUNC1(bridge);

	if (FUNC2(ps8622->panel)) {
		FUNC0("failed to disable panel\n");
		return;
	}
	FUNC3(PS8622_PWMO_END_T12_MS);
}
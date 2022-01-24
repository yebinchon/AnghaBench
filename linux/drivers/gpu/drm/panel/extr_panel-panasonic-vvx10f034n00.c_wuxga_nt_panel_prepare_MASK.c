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
struct wuxga_nt_panel {int prepared; int /*<<< orphan*/  supply; int /*<<< orphan*/  earliest_wake; } ;
struct drm_panel {int /*<<< orphan*/  dev; } ;
typedef  scalar_t__ s64 ;

/* Variables and functions */
 scalar_t__ MIN_POFF_MS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 struct wuxga_nt_panel* FUNC6 (struct drm_panel*) ; 
 int FUNC7 (struct wuxga_nt_panel*) ; 

__attribute__((used)) static int FUNC8(struct drm_panel *panel)
{
	struct wuxga_nt_panel *wuxga_nt = FUNC6(panel);
	int ret;
	s64 enablewait;

	if (wuxga_nt->prepared)
		return 0;

	/*
	 * If the user re-enabled the panel before the required off-time then
	 * we need to wait the remaining period before re-enabling regulator
	 */
	enablewait = FUNC2(wuxga_nt->earliest_wake, FUNC1());

	/* Sanity check, this should never happen */
	if (enablewait > MIN_POFF_MS)
		enablewait = MIN_POFF_MS;

	if (enablewait > 0)
		FUNC3(enablewait);

	ret = FUNC5(wuxga_nt->supply);
	if (ret < 0)
		return ret;

	/*
	 * A minimum delay of 250ms is required after power-up until commands
	 * can be sent
	 */
	FUNC3(250);

	ret = FUNC7(wuxga_nt);
	if (ret < 0) {
		FUNC0(panel->dev, "failed to set panel on: %d\n", ret);
		goto poweroff;
	}

	wuxga_nt->prepared = true;

	return 0;

poweroff:
	FUNC4(wuxga_nt->supply);

	return ret;
}
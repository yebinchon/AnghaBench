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
struct wuxga_nt_panel {int prepared; int /*<<< orphan*/  earliest_wake; int /*<<< orphan*/  supply; } ;
struct drm_panel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MIN_POFF_MS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct wuxga_nt_panel* FUNC3 (struct drm_panel*) ; 

__attribute__((used)) static int FUNC4(struct drm_panel *panel)
{
	struct wuxga_nt_panel *wuxga_nt = FUNC3(panel);

	if (!wuxga_nt->prepared)
		return 0;

	FUNC2(wuxga_nt->supply);
	wuxga_nt->earliest_wake = FUNC0(FUNC1(), MIN_POFF_MS);
	wuxga_nt->prepared = false;

	return 0;
}
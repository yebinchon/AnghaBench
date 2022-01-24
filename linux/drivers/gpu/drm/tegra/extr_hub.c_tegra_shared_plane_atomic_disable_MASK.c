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
typedef  int /*<<< orphan*/  u32 ;
struct tegra_plane {struct tegra_dc* dc; } ;
struct tegra_dc {int /*<<< orphan*/  dev; } ;
struct drm_plane_state {int /*<<< orphan*/  crtc; } ;
struct drm_plane {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DC_WIN_WIN_OPTIONS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WIN_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tegra_dc*,struct tegra_plane*) ; 
 int /*<<< orphan*/  FUNC4 (struct tegra_plane*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tegra_plane*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tegra_dc* FUNC6 (int /*<<< orphan*/ ) ; 
 struct tegra_plane* FUNC7 (struct drm_plane*) ; 

__attribute__((used)) static void FUNC8(struct drm_plane *plane,
					      struct drm_plane_state *old_state)
{
	struct tegra_plane *p = FUNC7(plane);
	struct tegra_dc *dc;
	u32 value;

	/* rien ne va plus */
	if (!old_state || !old_state->crtc)
		return;

	dc = FUNC6(old_state->crtc);

	/*
	 * XXX Legacy helpers seem to sometimes call ->atomic_disable() even
	 * on planes that are already disabled. Make sure we fallback to the
	 * head for this particular state instead of crashing.
	 */
	if (FUNC0(p->dc == NULL))
		p->dc = dc;

	FUNC1(dc->dev);

	value = FUNC4(p, DC_WIN_WIN_OPTIONS);
	value &= ~WIN_ENABLE;
	FUNC5(p, value, DC_WIN_WIN_OPTIONS);

	FUNC3(dc, p);

	FUNC2(dc->dev);
}
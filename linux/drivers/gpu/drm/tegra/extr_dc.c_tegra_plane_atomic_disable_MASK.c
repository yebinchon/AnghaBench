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
struct tegra_plane {int dummy; } ;
struct drm_plane_state {int /*<<< orphan*/  crtc; } ;
struct drm_plane {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DC_WIN_WIN_OPTIONS ; 
 int /*<<< orphan*/  WIN_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct tegra_plane*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_plane*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tegra_plane* FUNC2 (struct drm_plane*) ; 

__attribute__((used)) static void FUNC3(struct drm_plane *plane,
				       struct drm_plane_state *old_state)
{
	struct tegra_plane *p = FUNC2(plane);
	u32 value;

	/* rien ne va plus */
	if (!old_state || !old_state->crtc)
		return;

	value = FUNC0(p, DC_WIN_WIN_OPTIONS);
	value &= ~WIN_ENABLE;
	FUNC1(p, value, DC_WIN_WIN_OPTIONS);
}
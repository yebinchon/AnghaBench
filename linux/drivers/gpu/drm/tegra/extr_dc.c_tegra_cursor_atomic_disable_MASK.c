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
struct tegra_dc {int dummy; } ;
struct drm_plane_state {int /*<<< orphan*/  crtc; } ;
struct drm_plane {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURSOR_ENABLE ; 
 int /*<<< orphan*/  DC_DISP_DISP_WIN_OPTIONS ; 
 int /*<<< orphan*/  FUNC0 (struct tegra_dc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_dc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tegra_dc* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct drm_plane *plane,
					struct drm_plane_state *old_state)
{
	struct tegra_dc *dc;
	u32 value;

	/* rien ne va plus */
	if (!old_state || !old_state->crtc)
		return;

	dc = FUNC2(old_state->crtc);

	value = FUNC0(dc, DC_DISP_DISP_WIN_OPTIONS);
	value &= ~CURSOR_ENABLE;
	FUNC1(dc, value, DC_DISP_DISP_WIN_OPTIONS);
}
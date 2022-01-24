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
struct drm_plane {int dummy; } ;
struct tegra_plane {int index; struct drm_plane base; struct tegra_dc* dc; } ;
struct tegra_dc {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DRM_PLANE_TYPE_CURSOR ; 
 int ENOMEM ; 
 struct drm_plane* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (struct drm_plane*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct drm_device*,struct drm_plane*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct tegra_plane*) ; 
 struct tegra_plane* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * tegra_cursor_plane_formats ; 
 int /*<<< orphan*/  tegra_cursor_plane_helper_funcs ; 
 int /*<<< orphan*/  tegra_plane_funcs ; 
 unsigned long FUNC6 (struct drm_device*) ; 

__attribute__((used)) static struct drm_plane *FUNC7(struct drm_device *drm,
						      struct tegra_dc *dc)
{
	unsigned long possible_crtcs = FUNC6(drm);
	struct tegra_plane *plane;
	unsigned int num_formats;
	const u32 *formats;
	int err;

	plane = FUNC5(sizeof(*plane), GFP_KERNEL);
	if (!plane)
		return FUNC1(-ENOMEM);

	/*
	 * This index is kind of fake. The cursor isn't a regular plane, but
	 * its update and activation request bits in DC_CMD_STATE_CONTROL do
	 * use the same programming. Setting this fake index here allows the
	 * code in tegra_add_plane_state() to do the right thing without the
	 * need to special-casing the cursor plane.
	 */
	plane->index = 6;
	plane->dc = dc;

	num_formats = FUNC0(tegra_cursor_plane_formats);
	formats = tegra_cursor_plane_formats;

	err = FUNC3(drm, &plane->base, possible_crtcs,
				       &tegra_plane_funcs, formats,
				       num_formats, NULL,
				       DRM_PLANE_TYPE_CURSOR, NULL);
	if (err < 0) {
		FUNC4(plane);
		return FUNC1(err);
	}

	FUNC2(&plane->base, &tegra_cursor_plane_helper_funcs);

	return &plane->base;
}
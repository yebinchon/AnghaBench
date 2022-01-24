#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tegra_bo_tiling {scalar_t__ mode; } ;
struct tegra_plane_state {int bottom_up; int /*<<< orphan*/  swap; int /*<<< orphan*/  format; struct tegra_bo_tiling tiling; } ;
struct tegra_plane {int dummy; } ;
struct tegra_dc {TYPE_1__* soc; } ;
struct drm_plane_state {TYPE_3__* fb; int /*<<< orphan*/  rotation; int /*<<< orphan*/  crtc; } ;
struct drm_plane {int dummy; } ;
struct TYPE_6__ {scalar_t__* pitches; TYPE_2__* format; } ;
struct TYPE_5__ {int num_planes; int /*<<< orphan*/  format; } ;
struct TYPE_4__ {int /*<<< orphan*/  supports_block_linear; scalar_t__ has_legacy_blending; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 unsigned int DRM_MODE_REFLECT_Y ; 
 unsigned int DRM_MODE_ROTATE_0 ; 
 int EINVAL ; 
 scalar_t__ TEGRA_BO_TILING_MODE_BLOCK ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC2 (TYPE_3__*,struct tegra_bo_tiling*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct tegra_plane*,struct tegra_plane_state*) ; 
 int FUNC5 (struct tegra_plane*,struct drm_plane_state*) ; 
 struct tegra_dc* FUNC6 (int /*<<< orphan*/ ) ; 
 struct tegra_plane* FUNC7 (struct drm_plane*) ; 
 struct tegra_plane_state* FUNC8 (struct drm_plane_state*) ; 

__attribute__((used)) static int FUNC9(struct drm_plane *plane,
				    struct drm_plane_state *state)
{
	struct tegra_plane_state *plane_state = FUNC8(state);
	unsigned int rotation = DRM_MODE_ROTATE_0 | DRM_MODE_REFLECT_Y;
	struct tegra_bo_tiling *tiling = &plane_state->tiling;
	struct tegra_plane *tegra = FUNC7(plane);
	struct tegra_dc *dc = FUNC6(state->crtc);
	int err;

	/* no need for further checks if the plane is being disabled */
	if (!state->crtc)
		return 0;

	err = FUNC3(state->fb->format->format,
				 &plane_state->format,
				 &plane_state->swap);
	if (err < 0)
		return err;

	/*
	 * Tegra20 and Tegra30 are special cases here because they support
	 * only variants of specific formats with an alpha component, but not
	 * the corresponding opaque formats. However, the opaque formats can
	 * be emulated by disabling alpha blending for the plane.
	 */
	if (dc->soc->has_legacy_blending) {
		err = FUNC4(tegra, plane_state);
		if (err < 0)
			return err;
	}

	err = FUNC2(state->fb, tiling);
	if (err < 0)
		return err;

	if (tiling->mode == TEGRA_BO_TILING_MODE_BLOCK &&
	    !dc->soc->supports_block_linear) {
		FUNC0("hardware doesn't support block linear mode\n");
		return -EINVAL;
	}

	rotation = FUNC1(state->rotation, rotation);

	if (rotation & DRM_MODE_REFLECT_Y)
		plane_state->bottom_up = true;
	else
		plane_state->bottom_up = false;

	/*
	 * Tegra doesn't support different strides for U and V planes so we
	 * error out if the user tries to display a framebuffer with such a
	 * configuration.
	 */
	if (state->fb->format->num_planes > 2) {
		if (state->fb->pitches[2] != state->fb->pitches[1]) {
			FUNC0("unsupported UV-plane configuration\n");
			return -EINVAL;
		}
	}

	err = FUNC5(tegra, state);
	if (err < 0)
		return err;

	return 0;
}
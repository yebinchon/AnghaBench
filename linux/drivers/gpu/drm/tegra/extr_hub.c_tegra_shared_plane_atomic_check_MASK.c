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
struct tegra_shared_plane {int /*<<< orphan*/  base; } ;
struct tegra_bo_tiling {scalar_t__ mode; } ;
struct tegra_plane_state {int /*<<< orphan*/  swap; int /*<<< orphan*/  format; struct tegra_bo_tiling tiling; } ;
struct tegra_dc {TYPE_1__* soc; } ;
struct drm_plane_state {TYPE_3__* fb; int /*<<< orphan*/  crtc; } ;
struct drm_plane {int dummy; } ;
struct TYPE_6__ {scalar_t__* pitches; TYPE_2__* format; } ;
struct TYPE_5__ {int num_planes; int /*<<< orphan*/  format; } ;
struct TYPE_4__ {int /*<<< orphan*/  supports_block_linear; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 scalar_t__ TEGRA_BO_TILING_MODE_BLOCK ; 
 int FUNC1 (TYPE_3__*,struct tegra_bo_tiling*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct drm_plane_state*) ; 
 struct tegra_dc* FUNC4 (int /*<<< orphan*/ ) ; 
 struct tegra_plane_state* FUNC5 (struct drm_plane_state*) ; 
 struct tegra_shared_plane* FUNC6 (struct drm_plane*) ; 

__attribute__((used)) static int FUNC7(struct drm_plane *plane,
					   struct drm_plane_state *state)
{
	struct tegra_plane_state *plane_state = FUNC5(state);
	struct tegra_shared_plane *tegra = FUNC6(plane);
	struct tegra_bo_tiling *tiling = &plane_state->tiling;
	struct tegra_dc *dc = FUNC4(state->crtc);
	int err;

	/* no need for further checks if the plane is being disabled */
	if (!state->crtc || !state->fb)
		return 0;

	err = FUNC2(state->fb->format->format,
				 &plane_state->format,
				 &plane_state->swap);
	if (err < 0)
		return err;

	err = FUNC1(state->fb, tiling);
	if (err < 0)
		return err;

	if (tiling->mode == TEGRA_BO_TILING_MODE_BLOCK &&
	    !dc->soc->supports_block_linear) {
		FUNC0("hardware doesn't support block linear mode\n");
		return -EINVAL;
	}

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

	/* XXX scaling is not yet supported, add a check here */

	err = FUNC3(&tegra->base, state);
	if (err < 0)
		return err;

	return 0;
}
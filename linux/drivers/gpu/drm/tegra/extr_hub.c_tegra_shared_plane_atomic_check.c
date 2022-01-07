
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tegra_shared_plane {int base; } ;
struct tegra_bo_tiling {scalar_t__ mode; } ;
struct tegra_plane_state {int swap; int format; struct tegra_bo_tiling tiling; } ;
struct tegra_dc {TYPE_1__* soc; } ;
struct drm_plane_state {TYPE_3__* fb; int crtc; } ;
struct drm_plane {int dummy; } ;
struct TYPE_6__ {scalar_t__* pitches; TYPE_2__* format; } ;
struct TYPE_5__ {int num_planes; int format; } ;
struct TYPE_4__ {int supports_block_linear; } ;


 int DRM_ERROR (char*) ;
 int EINVAL ;
 scalar_t__ TEGRA_BO_TILING_MODE_BLOCK ;
 int tegra_fb_get_tiling (TYPE_3__*,struct tegra_bo_tiling*) ;
 int tegra_plane_format (int ,int *,int *) ;
 int tegra_plane_state_add (int *,struct drm_plane_state*) ;
 struct tegra_dc* to_tegra_dc (int ) ;
 struct tegra_plane_state* to_tegra_plane_state (struct drm_plane_state*) ;
 struct tegra_shared_plane* to_tegra_shared_plane (struct drm_plane*) ;

__attribute__((used)) static int tegra_shared_plane_atomic_check(struct drm_plane *plane,
        struct drm_plane_state *state)
{
 struct tegra_plane_state *plane_state = to_tegra_plane_state(state);
 struct tegra_shared_plane *tegra = to_tegra_shared_plane(plane);
 struct tegra_bo_tiling *tiling = &plane_state->tiling;
 struct tegra_dc *dc = to_tegra_dc(state->crtc);
 int err;


 if (!state->crtc || !state->fb)
  return 0;

 err = tegra_plane_format(state->fb->format->format,
     &plane_state->format,
     &plane_state->swap);
 if (err < 0)
  return err;

 err = tegra_fb_get_tiling(state->fb, tiling);
 if (err < 0)
  return err;

 if (tiling->mode == TEGRA_BO_TILING_MODE_BLOCK &&
     !dc->soc->supports_block_linear) {
  DRM_ERROR("hardware doesn't support block linear mode\n");
  return -EINVAL;
 }






 if (state->fb->format->num_planes > 2) {
  if (state->fb->pitches[2] != state->fb->pitches[1]) {
   DRM_ERROR("unsupported UV-plane configuration\n");
   return -EINVAL;
  }
 }



 err = tegra_plane_state_add(&tegra->base, state);
 if (err < 0)
  return err;

 return 0;
}

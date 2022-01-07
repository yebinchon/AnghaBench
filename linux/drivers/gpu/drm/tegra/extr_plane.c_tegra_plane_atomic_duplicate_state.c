
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_plane_state {int dummy; } ;
struct tegra_plane_state {struct drm_plane_state base; int * blending; int opaque; int bottom_up; int swap; int format; int tiling; } ;
struct drm_plane {int state; } ;


 int GFP_KERNEL ;
 int __drm_atomic_helper_plane_duplicate_state (struct drm_plane*,struct drm_plane_state*) ;
 struct tegra_plane_state* kmalloc (int,int ) ;
 struct tegra_plane_state* to_tegra_plane_state (int ) ;

__attribute__((used)) static struct drm_plane_state *
tegra_plane_atomic_duplicate_state(struct drm_plane *plane)
{
 struct tegra_plane_state *state = to_tegra_plane_state(plane->state);
 struct tegra_plane_state *copy;
 unsigned int i;

 copy = kmalloc(sizeof(*copy), GFP_KERNEL);
 if (!copy)
  return ((void*)0);

 __drm_atomic_helper_plane_duplicate_state(plane, &copy->base);
 copy->tiling = state->tiling;
 copy->format = state->format;
 copy->swap = state->swap;
 copy->bottom_up = state->bottom_up;
 copy->opaque = state->opaque;

 for (i = 0; i < 2; i++)
  copy->blending[i] = state->blending[i];

 return &copy->base;
}

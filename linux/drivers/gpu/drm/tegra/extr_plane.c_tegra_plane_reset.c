
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int normalized_zpos; int zpos; struct drm_plane* plane; } ;
struct tegra_plane_state {TYPE_1__ base; } ;
struct tegra_plane {int index; } ;
struct drm_plane {TYPE_1__* state; } ;


 int GFP_KERNEL ;
 int __drm_atomic_helper_plane_destroy_state (TYPE_1__*) ;
 int kfree (TYPE_1__*) ;
 struct tegra_plane_state* kzalloc (int,int ) ;
 struct tegra_plane* to_tegra_plane (struct drm_plane*) ;

__attribute__((used)) static void tegra_plane_reset(struct drm_plane *plane)
{
 struct tegra_plane *p = to_tegra_plane(plane);
 struct tegra_plane_state *state;

 if (plane->state)
  __drm_atomic_helper_plane_destroy_state(plane->state);

 kfree(plane->state);
 plane->state = ((void*)0);

 state = kzalloc(sizeof(*state), GFP_KERNEL);
 if (state) {
  plane->state = &state->base;
  plane->state->plane = plane;
  plane->state->zpos = p->index;
  plane->state->normalized_zpos = p->index;
 }
}

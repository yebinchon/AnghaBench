
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_plane_state {struct drm_plane* plane; } ;
struct mtk_plane_state {struct drm_plane_state base; int pending; } ;
struct drm_plane {int state; } ;


 int GFP_KERNEL ;
 int WARN_ON (int) ;
 int __drm_atomic_helper_plane_duplicate_state (struct drm_plane*,struct drm_plane_state*) ;
 struct mtk_plane_state* kzalloc (int,int ) ;
 struct mtk_plane_state* to_mtk_plane_state (int ) ;

__attribute__((used)) static struct drm_plane_state *mtk_plane_duplicate_state(struct drm_plane *plane)
{
 struct mtk_plane_state *old_state = to_mtk_plane_state(plane->state);
 struct mtk_plane_state *state;

 state = kzalloc(sizeof(*state), GFP_KERNEL);
 if (!state)
  return ((void*)0);

 __drm_atomic_helper_plane_duplicate_state(plane, &state->base);

 WARN_ON(state->base.plane != plane);

 state->pending = old_state->pending;

 return &state->base;
}

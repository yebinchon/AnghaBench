
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int format; } ;
struct TYPE_5__ {struct drm_plane* plane; } ;
struct mtk_plane_state {TYPE_1__ pending; TYPE_2__ base; } ;
struct drm_plane {TYPE_2__* state; } ;


 int DRM_FORMAT_RGB565 ;
 int GFP_KERNEL ;
 int __drm_atomic_helper_plane_destroy_state (TYPE_2__*) ;
 struct mtk_plane_state* kzalloc (int,int ) ;
 int memset (struct mtk_plane_state*,int ,int) ;
 struct mtk_plane_state* to_mtk_plane_state (TYPE_2__*) ;

__attribute__((used)) static void mtk_plane_reset(struct drm_plane *plane)
{
 struct mtk_plane_state *state;

 if (plane->state) {
  __drm_atomic_helper_plane_destroy_state(plane->state);

  state = to_mtk_plane_state(plane->state);
  memset(state, 0, sizeof(*state));
 } else {
  state = kzalloc(sizeof(*state), GFP_KERNEL);
  if (!state)
   return;
  plane->state = &state->base;
 }

 state->base.plane = plane;
 state->pending.format = DRM_FORMAT_RGB565;
}

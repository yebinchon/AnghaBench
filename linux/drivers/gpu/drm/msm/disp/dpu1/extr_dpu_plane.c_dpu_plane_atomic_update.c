
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_plane_state {int visible; } ;
struct drm_plane {struct drm_plane_state* state; } ;
struct dpu_plane {int is_error; } ;


 int DPU_DEBUG_PLANE (struct dpu_plane*,char*) ;
 int _dpu_plane_atomic_disable (struct drm_plane*) ;
 int dpu_plane_sspp_atomic_update (struct drm_plane*) ;
 struct dpu_plane* to_dpu_plane (struct drm_plane*) ;

__attribute__((used)) static void dpu_plane_atomic_update(struct drm_plane *plane,
    struct drm_plane_state *old_state)
{
 struct dpu_plane *pdpu = to_dpu_plane(plane);
 struct drm_plane_state *state = plane->state;

 pdpu->is_error = 0;

 DPU_DEBUG_PLANE(pdpu, "\n");

 if (!state->visible) {
  _dpu_plane_atomic_disable(plane);
 } else {
  dpu_plane_sspp_atomic_update(plane);
 }
}

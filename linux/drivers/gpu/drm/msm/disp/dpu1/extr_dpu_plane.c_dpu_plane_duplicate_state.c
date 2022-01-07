
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_plane_state {int dummy; } ;
struct drm_plane {int state; } ;
struct dpu_plane_state {int pending; struct drm_plane_state base; } ;
struct dpu_plane {int dummy; } ;


 int DPU_DEBUG_PLANE (struct dpu_plane*,char*) ;
 int DPU_ERROR (char*) ;
 int DPU_ERROR_PLANE (struct dpu_plane*,char*) ;
 int GFP_KERNEL ;
 int __drm_atomic_helper_plane_duplicate_state (struct drm_plane*,struct drm_plane_state*) ;
 struct dpu_plane_state* kmemdup (struct dpu_plane_state*,int,int ) ;
 struct dpu_plane* to_dpu_plane (struct drm_plane*) ;
 struct dpu_plane_state* to_dpu_plane_state (int ) ;

__attribute__((used)) static struct drm_plane_state *
dpu_plane_duplicate_state(struct drm_plane *plane)
{
 struct dpu_plane *pdpu;
 struct dpu_plane_state *pstate;
 struct dpu_plane_state *old_state;

 if (!plane) {
  DPU_ERROR("invalid plane\n");
  return ((void*)0);
 } else if (!plane->state) {
  DPU_ERROR("invalid plane state\n");
  return ((void*)0);
 }

 old_state = to_dpu_plane_state(plane->state);
 pdpu = to_dpu_plane(plane);
 pstate = kmemdup(old_state, sizeof(*old_state), GFP_KERNEL);
 if (!pstate) {
  DPU_ERROR_PLANE(pdpu, "failed to allocate state\n");
  return ((void*)0);
 }

 DPU_DEBUG_PLANE(pdpu, "\n");

 pstate->pending = 0;

 __drm_atomic_helper_plane_duplicate_state(plane, &pstate->base);

 return &pstate->base;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_plane {TYPE_1__* state; } ;
struct TYPE_2__ {struct drm_plane* plane; } ;
struct dpu_plane_state {TYPE_1__ base; } ;
struct dpu_plane {int dummy; } ;


 int DPU_DEBUG_PLANE (struct dpu_plane*,char*) ;
 int DPU_ERROR (char*) ;
 int DPU_ERROR_PLANE (struct dpu_plane*,char*) ;
 int GFP_KERNEL ;
 int dpu_plane_destroy_state (struct drm_plane*,TYPE_1__*) ;
 struct dpu_plane_state* kzalloc (int,int ) ;
 struct dpu_plane* to_dpu_plane (struct drm_plane*) ;

__attribute__((used)) static void dpu_plane_reset(struct drm_plane *plane)
{
 struct dpu_plane *pdpu;
 struct dpu_plane_state *pstate;

 if (!plane) {
  DPU_ERROR("invalid plane\n");
  return;
 }

 pdpu = to_dpu_plane(plane);
 DPU_DEBUG_PLANE(pdpu, "\n");


 if (plane->state) {
  dpu_plane_destroy_state(plane, plane->state);
  plane->state = 0;
 }

 pstate = kzalloc(sizeof(*pstate), GFP_KERNEL);
 if (!pstate) {
  DPU_ERROR_PLANE(pdpu, "failed to allocate state\n");
  return;
 }

 pstate->base.plane = plane;

 plane->state = &pstate->base;
}

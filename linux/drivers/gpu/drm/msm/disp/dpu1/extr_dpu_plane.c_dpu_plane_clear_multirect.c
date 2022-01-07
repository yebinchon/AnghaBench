
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_plane_state {int dummy; } ;
struct dpu_plane_state {int multirect_mode; int multirect_index; } ;


 int DPU_SSPP_MULTIRECT_NONE ;
 int DPU_SSPP_RECT_SOLO ;
 struct dpu_plane_state* to_dpu_plane_state (struct drm_plane_state const*) ;

void dpu_plane_clear_multirect(const struct drm_plane_state *drm_state)
{
 struct dpu_plane_state *pstate = to_dpu_plane_state(drm_state);

 pstate->multirect_index = DPU_SSPP_RECT_SOLO;
 pstate->multirect_mode = DPU_SSPP_MULTIRECT_NONE;
}

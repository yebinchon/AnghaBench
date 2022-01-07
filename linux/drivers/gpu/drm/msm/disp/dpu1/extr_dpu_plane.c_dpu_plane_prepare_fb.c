
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_plane_state {struct drm_framebuffer* fb; } ;
struct drm_plane {int dummy; } ;
struct TYPE_3__ {int id; } ;
struct drm_framebuffer {TYPE_1__ base; } ;
struct dpu_plane_state {scalar_t__ aspace; } ;
struct dpu_plane {int base; } ;
struct TYPE_4__ {scalar_t__ aspace; } ;
struct dpu_kms {TYPE_2__ base; } ;
struct dpu_hw_fmt_layout {int dummy; } ;


 int DPU_DEBUG_PLANE (struct dpu_plane*,char*,int ) ;
 int DPU_ERROR (char*) ;
 int DPU_ERROR_PLANE (struct dpu_plane*,char*,int) ;
 struct dpu_kms* _dpu_plane_get_kms (int *) ;
 int dpu_format_populate_layout (scalar_t__,struct drm_framebuffer*,struct dpu_hw_fmt_layout*) ;
 int drm_gem_fb_prepare_fb (struct drm_plane*,struct drm_plane_state*) ;
 int msm_framebuffer_prepare (struct drm_framebuffer*,scalar_t__) ;
 struct dpu_plane* to_dpu_plane (struct drm_plane*) ;
 struct dpu_plane_state* to_dpu_plane_state (struct drm_plane_state*) ;

__attribute__((used)) static int dpu_plane_prepare_fb(struct drm_plane *plane,
  struct drm_plane_state *new_state)
{
 struct drm_framebuffer *fb = new_state->fb;
 struct dpu_plane *pdpu = to_dpu_plane(plane);
 struct dpu_plane_state *pstate = to_dpu_plane_state(new_state);
 struct dpu_hw_fmt_layout layout;
 struct dpu_kms *kms = _dpu_plane_get_kms(&pdpu->base);
 int ret;

 if (!new_state->fb)
  return 0;

 DPU_DEBUG_PLANE(pdpu, "FB[%u]\n", fb->base.id);


 pstate->aspace = kms->base.aspace;






 drm_gem_fb_prepare_fb(plane, new_state);

 if (pstate->aspace) {
  ret = msm_framebuffer_prepare(new_state->fb,
    pstate->aspace);
  if (ret) {
   DPU_ERROR("failed to prepare framebuffer\n");
   return ret;
  }
 }


 ret = dpu_format_populate_layout(pstate->aspace,
   new_state->fb, &layout);
 if (ret) {
  DPU_ERROR_PLANE(pdpu, "failed to get format layout, %d\n", ret);
  return ret;
 }

 return 0;
}

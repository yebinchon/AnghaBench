
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_display_mode {int crtc_clock; } ;
struct TYPE_4__ {struct drm_display_mode adjusted_mode; } ;
struct intel_crtc_state {int pipe_bpp; int fdi_lanes; int bw_constrained; int fdi_m_n; TYPE_2__ base; } ;
struct TYPE_3__ {struct drm_device* dev; } ;
struct intel_crtc {int pipe; TYPE_1__ base; } ;
struct drm_device {int dummy; } ;


 int DRM_DEBUG_KMS (char*,int) ;
 int EDEADLK ;
 int EINVAL ;
 int RETRY ;
 int intel_fdi_link_freq (int ,struct intel_crtc_state*) ;
 int intel_link_compute_m_n (int,int,int,int,int *,int,int) ;
 int ironlake_check_fdi_lanes (struct drm_device*,int ,struct intel_crtc_state*) ;
 int ironlake_get_lanes_required (int,int,int) ;
 int to_i915 (struct drm_device*) ;

__attribute__((used)) static int ironlake_fdi_compute_config(struct intel_crtc *intel_crtc,
           struct intel_crtc_state *pipe_config)
{
 struct drm_device *dev = intel_crtc->base.dev;
 const struct drm_display_mode *adjusted_mode = &pipe_config->base.adjusted_mode;
 int lane, link_bw, fdi_dotclock, ret;
 bool needs_recompute = 0;

retry:







 link_bw = intel_fdi_link_freq(to_i915(dev), pipe_config);

 fdi_dotclock = adjusted_mode->crtc_clock;

 lane = ironlake_get_lanes_required(fdi_dotclock, link_bw,
        pipe_config->pipe_bpp);

 pipe_config->fdi_lanes = lane;

 intel_link_compute_m_n(pipe_config->pipe_bpp, lane, fdi_dotclock,
          link_bw, &pipe_config->fdi_m_n, 0, 0);

 ret = ironlake_check_fdi_lanes(dev, intel_crtc->pipe, pipe_config);
 if (ret == -EDEADLK)
  return ret;

 if (ret == -EINVAL && pipe_config->pipe_bpp > 6*3) {
  pipe_config->pipe_bpp -= 2*3;
  DRM_DEBUG_KMS("fdi link bw constraint, reducing pipe bpp to %i\n",
         pipe_config->pipe_bpp);
  needs_recompute = 1;
  pipe_config->bw_constrained = 1;

  goto retry;
 }

 if (needs_recompute)
  return RETRY;

 return ret;
}

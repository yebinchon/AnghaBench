
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct intel_plane {int (* max_stride ) (struct intel_plane*,int ,int ,int ) ;} ;
struct TYPE_2__ {int primary; } ;
struct intel_crtc {TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;


 int DRM_MODE_ROTATE_0 ;
 int PIPE_A ;
 struct intel_crtc* intel_get_crtc_for_pipe (struct drm_i915_private*,int ) ;
 int stub1 (struct intel_plane*,int ,int ,int ) ;
 struct intel_plane* to_intel_plane (int ) ;

u32 intel_plane_fb_max_stride(struct drm_i915_private *dev_priv,
         u32 pixel_format, u64 modifier)
{
 struct intel_crtc *crtc;
 struct intel_plane *plane;





 crtc = intel_get_crtc_for_pipe(dev_priv, PIPE_A);
 plane = to_intel_plane(crtc->base.primary);

 return plane->max_stride(plane, pixel_format, modifier,
     DRM_MODE_ROTATE_0);
}

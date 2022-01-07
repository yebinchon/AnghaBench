
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int vdisplay; int hdisplay; } ;
struct TYPE_5__ {TYPE_1__ mode; } ;
struct intel_crtc_state {int pipe_src_h; int pipe_src_w; TYPE_2__ base; } ;
struct TYPE_6__ {struct drm_device* dev; } ;
struct intel_crtc {int pipe; TYPE_3__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {int dummy; } ;


 int I915_READ (int ) ;
 int PIPESRC (int ) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;

__attribute__((used)) static void intel_get_pipe_src_size(struct intel_crtc *crtc,
        struct intel_crtc_state *pipe_config)
{
 struct drm_device *dev = crtc->base.dev;
 struct drm_i915_private *dev_priv = to_i915(dev);
 u32 tmp;

 tmp = I915_READ(PIPESRC(crtc->pipe));
 pipe_config->pipe_src_h = (tmp & 0xffff) + 1;
 pipe_config->pipe_src_w = ((tmp >> 16) & 0xffff) + 1;

 pipe_config->base.mode.vdisplay = pipe_config->pipe_src_h;
 pipe_config->base.mode.hdisplay = pipe_config->pipe_src_w;
}

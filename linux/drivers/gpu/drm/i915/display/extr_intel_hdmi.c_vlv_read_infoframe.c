
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct TYPE_4__ {int crtc; } ;
struct intel_crtc_state {TYPE_2__ base; } ;
struct intel_crtc {int pipe; } ;
struct drm_i915_private {int dummy; } ;
typedef int ssize_t ;


 void* I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int VIDEO_DIP_SELECT_MASK ;
 int VLV_TVIDEO_DIP_CTL (int ) ;
 int VLV_TVIDEO_DIP_DATA (int ) ;
 int g4x_infoframe_index (unsigned int) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_crtc* to_intel_crtc (int ) ;

__attribute__((used)) static void vlv_read_infoframe(struct intel_encoder *encoder,
          const struct intel_crtc_state *crtc_state,
          unsigned int type,
          void *frame, ssize_t len)
{
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 struct intel_crtc *crtc = to_intel_crtc(crtc_state->base.crtc);
 u32 val, *data = frame;
 int i;

 val = I915_READ(VLV_TVIDEO_DIP_CTL(crtc->pipe));

 val &= ~(VIDEO_DIP_SELECT_MASK | 0xf);
 val |= g4x_infoframe_index(type);

 I915_WRITE(VLV_TVIDEO_DIP_CTL(crtc->pipe), val);

 for (i = 0; i < len; i += 4)
  *data++ = I915_READ(VLV_TVIDEO_DIP_DATA(crtc->pipe));
}

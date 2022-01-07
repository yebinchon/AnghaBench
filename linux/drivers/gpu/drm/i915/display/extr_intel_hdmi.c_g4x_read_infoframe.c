
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct intel_crtc_state {int dummy; } ;
struct drm_i915_private {int dummy; } ;
typedef int ssize_t ;


 void* I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int VIDEO_DIP_CTL ;
 int VIDEO_DIP_DATA ;
 int VIDEO_DIP_SELECT_MASK ;
 int g4x_infoframe_index (unsigned int) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static void g4x_read_infoframe(struct intel_encoder *encoder,
          const struct intel_crtc_state *crtc_state,
          unsigned int type,
          void *frame, ssize_t len)
{
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 u32 val, *data = frame;
 int i;

 val = I915_READ(VIDEO_DIP_CTL);

 val &= ~(VIDEO_DIP_SELECT_MASK | 0xf);
 val |= g4x_infoframe_index(type);

 I915_WRITE(VIDEO_DIP_CTL, val);

 for (i = 0; i < len; i += 4)
  *data++ = I915_READ(VIDEO_DIP_DATA);
}

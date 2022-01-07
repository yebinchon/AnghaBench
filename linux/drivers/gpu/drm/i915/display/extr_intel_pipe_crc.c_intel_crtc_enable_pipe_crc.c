
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct intel_pipe_crc {scalar_t__ skipped; int source; } ;
struct TYPE_2__ {int opened; } ;
struct drm_crtc {size_t index; TYPE_1__ crc; int dev; } ;
struct intel_crtc {struct drm_crtc base; } ;
struct drm_i915_private {struct intel_pipe_crc* pipe_crc; } ;


 int I915_WRITE (int ,int ) ;
 int PIPE_CRC_CTL (size_t) ;
 int POSTING_READ (int ) ;
 scalar_t__ get_new_crc_ctl_reg (struct drm_i915_private*,size_t,int *,int *) ;
 struct drm_i915_private* to_i915 (int ) ;

void intel_crtc_enable_pipe_crc(struct intel_crtc *intel_crtc)
{
 struct drm_crtc *crtc = &intel_crtc->base;
 struct drm_i915_private *dev_priv = to_i915(crtc->dev);
 struct intel_pipe_crc *pipe_crc = &dev_priv->pipe_crc[crtc->index];
 u32 val = 0;

 if (!crtc->crc.opened)
  return;

 if (get_new_crc_ctl_reg(dev_priv, crtc->index, &pipe_crc->source, &val) < 0)
  return;


 pipe_crc->skipped = 0;

 I915_WRITE(PIPE_CRC_CTL(crtc->index), val);
 POSTING_READ(PIPE_CRC_CTL(crtc->index));
}

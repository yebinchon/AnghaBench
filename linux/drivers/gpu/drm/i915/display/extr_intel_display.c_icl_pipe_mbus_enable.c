
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dev; } ;
struct intel_crtc {int pipe; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int I915_WRITE (int ,int ) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 int MBUS_DBOX_A_CREDIT (int) ;
 int MBUS_DBOX_BW_CREDIT (int) ;
 int MBUS_DBOX_B_CREDIT (int) ;
 int PIPE_MBUS_DBOX_CTL (int) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static void icl_pipe_mbus_enable(struct intel_crtc *crtc)
{
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 enum pipe pipe = crtc->pipe;
 u32 val;

 val = MBUS_DBOX_A_CREDIT(2);

 if (INTEL_GEN(dev_priv) >= 12) {
  val |= MBUS_DBOX_BW_CREDIT(2);
  val |= MBUS_DBOX_B_CREDIT(12);
 } else {
  val |= MBUS_DBOX_BW_CREDIT(1);
  val |= MBUS_DBOX_B_CREDIT(8);
 }

 I915_WRITE(PIPE_MBUS_DBOX_CTL(pipe), val);
}

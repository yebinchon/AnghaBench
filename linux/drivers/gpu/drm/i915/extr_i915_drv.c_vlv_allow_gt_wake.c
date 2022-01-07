
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int DRM_ERROR (char*) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int ) ;
 int POSTING_READ (int ) ;
 int VLV_GTLC_ALLOWWAKEACK ;
 int VLV_GTLC_ALLOWWAKEREQ ;
 int VLV_GTLC_WAKE_CTRL ;
 int vlv_wait_for_pw_status (struct drm_i915_private*,int ,int ) ;

__attribute__((used)) static int vlv_allow_gt_wake(struct drm_i915_private *dev_priv, bool allow)
{
 u32 mask;
 u32 val;
 int err;

 val = I915_READ(VLV_GTLC_WAKE_CTRL);
 val &= ~VLV_GTLC_ALLOWWAKEREQ;
 if (allow)
  val |= VLV_GTLC_ALLOWWAKEREQ;
 I915_WRITE(VLV_GTLC_WAKE_CTRL, val);
 POSTING_READ(VLV_GTLC_WAKE_CTRL);

 mask = VLV_GTLC_ALLOWWAKEACK;
 val = allow ? mask : 0;

 err = vlv_wait_for_pw_status(dev_priv, mask, val);
 if (err)
  DRM_ERROR("timeout disabling GT waking\n");

 return err;
}

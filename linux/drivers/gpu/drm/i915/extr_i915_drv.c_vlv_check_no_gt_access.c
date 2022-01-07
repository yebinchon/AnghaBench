
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int DRM_DEBUG_DRIVER (char*) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int VLV_GTLC_ALLOWWAKEERR ;
 int VLV_GTLC_PW_STATUS ;

__attribute__((used)) static void vlv_check_no_gt_access(struct drm_i915_private *dev_priv)
{
 if (!(I915_READ(VLV_GTLC_PW_STATUS) & VLV_GTLC_ALLOWWAKEERR))
  return;

 DRM_DEBUG_DRIVER("GT register access while GT waking disabled\n");
 I915_WRITE(VLV_GTLC_PW_STATUS, VLV_GTLC_ALLOWWAKEERR);
}

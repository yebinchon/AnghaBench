
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int DRM_DEBUG_DRIVER (char*,int ) ;
 int VLV_GTLC_PW_MEDIA_STATUS_MASK ;
 int VLV_GTLC_PW_RENDER_STATUS_MASK ;
 int onoff (int) ;
 scalar_t__ vlv_wait_for_pw_status (struct drm_i915_private*,int,int) ;

__attribute__((used)) static void vlv_wait_for_gt_wells(struct drm_i915_private *dev_priv,
      bool wait_for_on)
{
 u32 mask;
 u32 val;

 mask = VLV_GTLC_PW_MEDIA_STATUS_MASK | VLV_GTLC_PW_RENDER_STATUS_MASK;
 val = wait_for_on ? mask : 0;
 if (vlv_wait_for_pw_status(dev_priv, mask, val))
  DRM_DEBUG_DRIVER("timeout waiting for GT wells to go %s\n",
     onoff(wait_for_on));
}

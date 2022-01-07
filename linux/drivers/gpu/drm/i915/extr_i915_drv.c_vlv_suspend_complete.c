
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int I915_READ (int ) ;
 int VLV_GTLC_MEDIA_CTX_EXISTS ;
 int VLV_GTLC_RENDER_CTX_EXISTS ;
 int VLV_GTLC_WAKE_CTRL ;
 int WARN_ON (int) ;
 int vlv_allow_gt_wake (struct drm_i915_private*,int) ;
 int vlv_check_no_gt_access (struct drm_i915_private*) ;
 int vlv_force_gfx_clock (struct drm_i915_private*,int) ;
 int vlv_save_gunit_s0ix_state (struct drm_i915_private*) ;
 int vlv_wait_for_gt_wells (struct drm_i915_private*,int) ;

__attribute__((used)) static int vlv_suspend_complete(struct drm_i915_private *dev_priv)
{
 u32 mask;
 int err;





 vlv_wait_for_gt_wells(dev_priv, 0);

 mask = VLV_GTLC_RENDER_CTX_EXISTS | VLV_GTLC_MEDIA_CTX_EXISTS;
 WARN_ON((I915_READ(VLV_GTLC_WAKE_CTRL) & mask) != mask);

 vlv_check_no_gt_access(dev_priv);

 err = vlv_force_gfx_clock(dev_priv, 1);
 if (err)
  goto err1;

 err = vlv_allow_gt_wake(dev_priv, 0);
 if (err)
  goto err2;

 vlv_save_gunit_s0ix_state(dev_priv);

 err = vlv_force_gfx_clock(dev_priv, 0);
 if (err)
  goto err2;

 return 0;

err2:

 vlv_allow_gt_wake(dev_priv, 1);
err1:
 vlv_force_gfx_clock(dev_priv, 0);

 return err;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct i915_power_well {TYPE_1__* desc; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_4__ {int (* disable ) (struct drm_i915_private*,struct i915_power_well*) ;int (* enable ) (struct drm_i915_private*,struct i915_power_well*) ;scalar_t__ (* is_enabled ) (struct drm_i915_private*,struct i915_power_well*) ;} ;
struct TYPE_3__ {TYPE_2__* ops; } ;


 int DPIO_CMNRST ;
 int DPIO_CTL ;
 int DRM_DEBUG_KMS (char*) ;
 int I915_READ (int ) ;
 int VLV_DISP_PW_DISP2D ;
 int VLV_DISP_PW_DPIO_CMN_BC ;
 struct i915_power_well* lookup_power_well (struct drm_i915_private*,int ) ;
 scalar_t__ stub1 (struct drm_i915_private*,struct i915_power_well*) ;
 scalar_t__ stub2 (struct drm_i915_private*,struct i915_power_well*) ;
 int stub3 (struct drm_i915_private*,struct i915_power_well*) ;
 int stub4 (struct drm_i915_private*,struct i915_power_well*) ;

__attribute__((used)) static void vlv_cmnlane_wa(struct drm_i915_private *dev_priv)
{
 struct i915_power_well *cmn =
  lookup_power_well(dev_priv, VLV_DISP_PW_DPIO_CMN_BC);
 struct i915_power_well *disp2d =
  lookup_power_well(dev_priv, VLV_DISP_PW_DISP2D);


 if (cmn->desc->ops->is_enabled(dev_priv, cmn) &&
     disp2d->desc->ops->is_enabled(dev_priv, disp2d) &&
     I915_READ(DPIO_CTL) & DPIO_CMNRST)
  return;

 DRM_DEBUG_KMS("toggling display PHY side reset\n");


 disp2d->desc->ops->enable(dev_priv, disp2d);
 cmn->desc->ops->disable(dev_priv, cmn);
}

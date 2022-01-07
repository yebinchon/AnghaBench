
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct drm_i915_private {int dummy; } ;
struct drm_device {int dummy; } ;
typedef int i915_reg_t ;


 int DRM_ERROR (char*,int ) ;
 scalar_t__ I915_READ (int ) ;
 int PIPEDSL (int) ;
 int pipe_name (int) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;
 int udelay (int) ;
 scalar_t__ wait_for (int,int) ;

__attribute__((used)) static void cpt_verify_modeset(struct drm_device *dev, int pipe)
{
 struct drm_i915_private *dev_priv = to_i915(dev);
 i915_reg_t dslreg = PIPEDSL(pipe);
 u32 temp;

 temp = I915_READ(dslreg);
 udelay(500);
 if (wait_for(I915_READ(dslreg) != temp, 5)) {
  if (wait_for(I915_READ(dslreg) != temp, 5))
   DRM_ERROR("mode set failed: pipe %c stuck\n", pipe_name(pipe));
 }
}

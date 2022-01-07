
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;
typedef enum intel_pipe_crc_source { ____Placeholder_intel_pipe_crc_source } intel_pipe_crc_source ;


 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_CHERRYVIEW (struct drm_i915_private*) ;
 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;
 scalar_t__ IS_GEN_RANGE (struct drm_i915_private*,int,int) ;
 scalar_t__ IS_VALLEYVIEW (struct drm_i915_private*) ;
 int i8xx_pipe_crc_ctl_reg (int*,int *) ;
 int i9xx_pipe_crc_ctl_reg (struct drm_i915_private*,int,int*,int *) ;
 int ilk_pipe_crc_ctl_reg (int*,int *) ;
 int ivb_pipe_crc_ctl_reg (struct drm_i915_private*,int,int*,int *) ;
 int skl_pipe_crc_ctl_reg (struct drm_i915_private*,int,int*,int *) ;
 int vlv_pipe_crc_ctl_reg (struct drm_i915_private*,int,int*,int *) ;

__attribute__((used)) static int get_new_crc_ctl_reg(struct drm_i915_private *dev_priv,
          enum pipe pipe,
          enum intel_pipe_crc_source *source, u32 *val)
{
 if (IS_GEN(dev_priv, 2))
  return i8xx_pipe_crc_ctl_reg(source, val);
 else if (INTEL_GEN(dev_priv) < 5)
  return i9xx_pipe_crc_ctl_reg(dev_priv, pipe, source, val);
 else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
  return vlv_pipe_crc_ctl_reg(dev_priv, pipe, source, val);
 else if (IS_GEN_RANGE(dev_priv, 5, 6))
  return ilk_pipe_crc_ctl_reg(source, val);
 else if (INTEL_GEN(dev_priv) < 9)
  return ivb_pipe_crc_ctl_reg(dev_priv, pipe, source, val);
 else
  return skl_pipe_crc_ctl_reg(dev_priv, pipe, source, val);
}

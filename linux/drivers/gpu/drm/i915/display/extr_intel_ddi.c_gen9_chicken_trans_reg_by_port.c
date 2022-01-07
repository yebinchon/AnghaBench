
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
typedef int i915_reg_t ;
typedef enum port { ____Placeholder_port } port ;






 int INTEL_GEN (struct drm_i915_private*) ;





 scalar_t__ WARN_ON (int) ;

__attribute__((used)) static i915_reg_t
gen9_chicken_trans_reg_by_port(struct drm_i915_private *dev_priv,
          enum port port)
{
 static const i915_reg_t regs[] = {
  [132] = 133,
  [131] = 136,
  [130] = 135,
  [129] = 134,
  [128] = 136,
 };

 WARN_ON(INTEL_GEN(dev_priv) < 9);

 if (WARN_ON(port < 132 || port > 128))
  port = 132;

 return regs[port];
}

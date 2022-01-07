
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int GEN8_DE_PIPE_IRQ_FAULT_ERRORS ;
 int GEN9_DE_PIPE_IRQ_FAULT_ERRORS ;
 int INTEL_GEN (struct drm_i915_private*) ;

__attribute__((used)) static u32 gen8_de_pipe_fault_mask(struct drm_i915_private *dev_priv)
{
 if (INTEL_GEN(dev_priv) >= 9)
  return GEN9_DE_PIPE_IRQ_FAULT_ERRORS;
 else
  return GEN8_DE_PIPE_IRQ_FAULT_ERRORS;
}

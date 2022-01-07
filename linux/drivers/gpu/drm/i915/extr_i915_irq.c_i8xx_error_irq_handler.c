
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct drm_i915_private {int dummy; } ;


 int DRM_DEBUG (char*,scalar_t__) ;
 int DRM_DEBUG_DRIVER (char*,scalar_t__) ;

__attribute__((used)) static void i8xx_error_irq_handler(struct drm_i915_private *dev_priv,
       u16 eir, u16 eir_stuck)
{
 DRM_DEBUG("Master Error: EIR 0x%04x\n", eir);

 if (eir_stuck)
  DRM_DEBUG_DRIVER("EIR stuck: 0x%04x, masked\n", eir_stuck);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_engine_cs {struct drm_i915_private* i915; } ;
struct drm_i915_private {int dummy; } ;
typedef int phys_addr_t ;


 int HWS_PGA ;
 int I915_WRITE (int ,int) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 int lower_32_bits (int) ;

__attribute__((used)) static void set_hws_pga(struct intel_engine_cs *engine, phys_addr_t phys)
{
 struct drm_i915_private *dev_priv = engine->i915;
 u32 addr;

 addr = lower_32_bits(phys);
 if (INTEL_GEN(dev_priv) >= 4)
  addr |= (phys >> 28) & 0xf0;

 I915_WRITE(HWS_PGA, addr);
}

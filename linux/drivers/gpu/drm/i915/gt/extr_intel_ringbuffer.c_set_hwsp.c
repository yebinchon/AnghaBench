
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_engine_cs {int id; int mmio_base; struct drm_i915_private* i915; } ;
struct drm_i915_private {int dummy; } ;
typedef int i915_reg_t ;



 int BLT_HWS_PGA_GEN7 ;
 int BSD_HWS_PGA_GEN7 ;
 int GEM_BUG_ON (int) ;
 int I915_WRITE (int ,int ) ;
 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;
 int POSTING_READ (int ) ;

 int RENDER_HWS_PGA_GEN7 ;
 int RING_HWS_PGA (int ) ;
 int RING_HWS_PGA_GEN6 (int ) ;

 int VEBOX_HWS_PGA_GEN7 ;


__attribute__((used)) static void set_hwsp(struct intel_engine_cs *engine, u32 offset)
{
 struct drm_i915_private *dev_priv = engine->i915;
 i915_reg_t hwsp;





 if (IS_GEN(dev_priv, 7)) {
  switch (engine->id) {




  default:
   GEM_BUG_ON(engine->id);

  case 130:
   hwsp = RENDER_HWS_PGA_GEN7;
   break;
  case 131:
   hwsp = BLT_HWS_PGA_GEN7;
   break;
  case 129:
   hwsp = BSD_HWS_PGA_GEN7;
   break;
  case 128:
   hwsp = VEBOX_HWS_PGA_GEN7;
   break;
  }
 } else if (IS_GEN(dev_priv, 6)) {
  hwsp = RING_HWS_PGA_GEN6(engine->mmio_base);
 } else {
  hwsp = RING_HWS_PGA(engine->mmio_base);
 }

 I915_WRITE(hwsp, offset);
 POSTING_READ(hwsp);
}

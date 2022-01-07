
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct drm_i915_private {int dummy; } ;


 int DC_STATE_EN ;
 int DRM_DEBUG_KMS (char*,scalar_t__,int) ;
 int DRM_ERROR (char*,scalar_t__,scalar_t__) ;
 scalar_t__ I915_READ (int ) ;
 int I915_WRITE (int ,scalar_t__) ;

__attribute__((used)) static void gen9_write_dc_state(struct drm_i915_private *dev_priv,
    u32 state)
{
 int rewrites = 0;
 int rereads = 0;
 u32 v;

 I915_WRITE(DC_STATE_EN, state);






 do {
  v = I915_READ(DC_STATE_EN);

  if (v != state) {
   I915_WRITE(DC_STATE_EN, state);
   rewrites++;
   rereads = 0;
  } else if (rereads++ > 5) {
   break;
  }

 } while (rewrites < 100);

 if (v != state)
  DRM_ERROR("Writing dc state to 0x%x failed, now 0x%x\n",
     state, v);


 if (rewrites > 1)
  DRM_DEBUG_KMS("Rewrote dc state to 0x%x %d times\n",
         state, rewrites);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int I915_WRITE (int ,int) ;
 int MEM_DISPLAY_A_TRICKLE_FEED_DISABLE ;
 int MEM_DISPLAY_B_TRICKLE_FEED_DISABLE ;
 int MEM_MODE ;
 int _MASKED_BIT_ENABLE (int ) ;

__attribute__((used)) static void i830_init_clock_gating(struct drm_i915_private *dev_priv)
{
 I915_WRITE(MEM_MODE,
     _MASKED_BIT_ENABLE(MEM_DISPLAY_A_TRICKLE_FEED_DISABLE) |
     _MASKED_BIT_ENABLE(MEM_DISPLAY_B_TRICKLE_FEED_DISABLE));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int GEN6_RP_CONTROL ;
 int I915_WRITE (int ,int ) ;

__attribute__((used)) static void gen9_disable_rps(struct drm_i915_private *dev_priv)
{
 I915_WRITE(GEN6_RP_CONTROL, 0);
}

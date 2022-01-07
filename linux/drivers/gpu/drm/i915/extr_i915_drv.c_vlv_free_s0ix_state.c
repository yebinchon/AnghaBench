
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int * vlv_s0ix_state; } ;


 int kfree (int *) ;

__attribute__((used)) static void vlv_free_s0ix_state(struct drm_i915_private *i915)
{
 if (!i915->vlv_s0ix_state)
  return;

 kfree(i915->vlv_s0ix_state);
 i915->vlv_s0ix_state = ((void*)0);
}

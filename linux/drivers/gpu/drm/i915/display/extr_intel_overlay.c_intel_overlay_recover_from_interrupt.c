
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_overlay {int last_flip; } ;


 int i915_active_wait (int *) ;

__attribute__((used)) static int intel_overlay_recover_from_interrupt(struct intel_overlay *overlay)
{
 return i915_active_wait(&overlay->last_flip);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct igt_spinner {int hws; int obj; } ;


 int i915_gem_object_put (int ) ;
 int i915_gem_object_unpin_map (int ) ;
 int igt_spinner_end (struct igt_spinner*) ;

void igt_spinner_fini(struct igt_spinner *spin)
{
 igt_spinner_end(spin);

 i915_gem_object_unpin_map(spin->obj);
 i915_gem_object_put(spin->obj);

 i915_gem_object_unpin_map(spin->hws);
 i915_gem_object_put(spin->hws);
}

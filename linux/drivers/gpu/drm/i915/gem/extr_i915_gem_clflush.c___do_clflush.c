
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pages; } ;
struct drm_i915_gem_object {int frontbuffer; TYPE_1__ mm; } ;


 int GEM_BUG_ON (int) ;
 int ORIGIN_CPU ;
 int drm_clflush_sg (int ) ;
 int i915_gem_object_has_pages (struct drm_i915_gem_object*) ;
 int intel_frontbuffer_flush (int ,int ) ;

__attribute__((used)) static void __do_clflush(struct drm_i915_gem_object *obj)
{
 GEM_BUG_ON(!i915_gem_object_has_pages(obj));
 drm_clflush_sg(obj->mm.pages);
 intel_frontbuffer_flush(obj->frontbuffer, ORIGIN_CPU);
}

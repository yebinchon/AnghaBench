
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_error_object {int page_count; scalar_t__* pages; } ;


 int free_page (unsigned long) ;
 int kfree (struct drm_i915_error_object*) ;

__attribute__((used)) static void i915_error_object_free(struct drm_i915_error_object *obj)
{
 int page;

 if (obj == ((void*)0))
  return;

 for (page = 0; page < obj->page_count; page++)
  free_page((unsigned long)obj->pages[page]);

 kfree(obj);
}

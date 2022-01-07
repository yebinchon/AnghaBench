
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct TYPE_2__ {int quirked; } ;
struct drm_i915_gem_object {int st_link; TYPE_1__ mm; } ;


 int GEM_BUG_ON (int) ;
 int list_add (int *,struct list_head*) ;

__attribute__((used)) static void quirk_add(struct drm_i915_gem_object *obj,
        struct list_head *objects)
{

 GEM_BUG_ON(obj->mm.quirked);
 obj->mm.quirked = 1;
 list_add(&obj->st_link, objects);
}

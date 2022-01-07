
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct llist_node {int dummy; } ;
struct TYPE_2__ {int free_list; } ;
struct drm_i915_private {TYPE_1__ mm; } ;


 int __i915_gem_free_objects (struct drm_i915_private*,struct llist_node*) ;
 struct llist_node* llist_del_all (int *) ;
 scalar_t__ unlikely (struct llist_node*) ;

void i915_gem_flush_free_objects(struct drm_i915_private *i915)
{
 struct llist_node *freed = llist_del_all(&i915->mm.free_list);

 if (unlikely(freed))
  __i915_gem_free_objects(i915, freed);
}

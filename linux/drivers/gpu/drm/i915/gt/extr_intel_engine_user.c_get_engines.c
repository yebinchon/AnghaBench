
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct llist_node {int dummy; } ;
struct llist_head {int dummy; } ;
struct drm_i915_private {int uabi_engines; } ;


 struct llist_node* llist_del_all (struct llist_head*) ;

__attribute__((used)) static struct llist_node *get_engines(struct drm_i915_private *i915)
{
 return llist_del_all((struct llist_head *)&i915->uabi_engines);
}

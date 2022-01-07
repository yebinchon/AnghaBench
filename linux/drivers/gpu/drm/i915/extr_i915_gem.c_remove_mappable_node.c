
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_mm_node {int dummy; } ;


 int drm_mm_remove_node (struct drm_mm_node*) ;

__attribute__((used)) static void
remove_mappable_node(struct drm_mm_node *node)
{
 drm_mm_remove_node(node);
}

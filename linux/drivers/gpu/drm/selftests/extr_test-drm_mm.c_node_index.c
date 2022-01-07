
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_mm_node {int size; int start; } ;


 unsigned int div64_u64 (int ,int ) ;

__attribute__((used)) static unsigned int node_index(const struct drm_mm_node *node)
{
 return div64_u64(node->start, node->size);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
struct drm_mm_node {void* size; void* start; } ;



__attribute__((used)) static struct drm_mm_node *set_node(struct drm_mm_node *node,
        u64 start, u64 size)
{
 node->start = start;
 node->size = size;
 return node;
}

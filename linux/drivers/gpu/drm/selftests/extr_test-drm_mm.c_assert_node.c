
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct drm_mm_node {scalar_t__ size; unsigned long color; int start; struct drm_mm* mm; } ;
struct drm_mm {int dummy; } ;


 int drm_mm_node_allocated (struct drm_mm_node*) ;
 scalar_t__ misalignment (struct drm_mm_node*,scalar_t__) ;
 int pr_err (char*,...) ;

__attribute__((used)) static bool assert_node(struct drm_mm_node *node, struct drm_mm *mm,
   u64 size, u64 alignment, unsigned long color)
{
 bool ok = 1;

 if (!drm_mm_node_allocated(node) || node->mm != mm) {
  pr_err("node not allocated\n");
  ok = 0;
 }

 if (node->size != size) {
  pr_err("node has wrong size, found %llu, expected %llu\n",
         node->size, size);
  ok = 0;
 }

 if (misalignment(node, alignment)) {
  pr_err("node is misaligned, start %llx rem %llu, expected alignment %llu\n",
         node->start, misalignment(node, alignment), alignment);
  ok = 0;
 }

 if (node->color != color) {
  pr_err("node has wrong color, found %lu, expected %lu\n",
         node->color, color);
  ok = 0;
 }

 return ok;
}

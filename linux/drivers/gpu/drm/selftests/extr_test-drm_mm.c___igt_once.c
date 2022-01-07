
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_mm_node {int start; int size; } ;
struct drm_mm {int dummy; } ;
typedef int rsvd_lo ;
typedef int rsvd_hi ;
typedef int node ;


 unsigned int DRM_MM_INSERT_ONCE ;
 int EINVAL ;
 int drm_mm_hole_follows (struct drm_mm_node*) ;
 int drm_mm_init (struct drm_mm*,int ,int) ;
 int drm_mm_insert_node_generic (struct drm_mm*,struct drm_mm_node*,int,int ,int ,unsigned int) ;
 int drm_mm_remove_node (struct drm_mm_node*) ;
 int drm_mm_reserve_node (struct drm_mm*,struct drm_mm_node*) ;
 int drm_mm_takedown (struct drm_mm*) ;
 int memset (struct drm_mm_node*,int ,int) ;
 int pr_err (char*,...) ;

__attribute__((used)) static int __igt_once(unsigned int mode)
{
 struct drm_mm mm;
 struct drm_mm_node rsvd_lo, rsvd_hi, node;
 int err;

 drm_mm_init(&mm, 0, 7);

 memset(&rsvd_lo, 0, sizeof(rsvd_lo));
 rsvd_lo.start = 1;
 rsvd_lo.size = 1;
 err = drm_mm_reserve_node(&mm, &rsvd_lo);
 if (err) {
  pr_err("Could not reserve low node\n");
  goto err;
 }

 memset(&rsvd_hi, 0, sizeof(rsvd_hi));
 rsvd_hi.start = 5;
 rsvd_hi.size = 1;
 err = drm_mm_reserve_node(&mm, &rsvd_hi);
 if (err) {
  pr_err("Could not reserve low node\n");
  goto err_lo;
 }

 if (!drm_mm_hole_follows(&rsvd_lo) || !drm_mm_hole_follows(&rsvd_hi)) {
  pr_err("Expected a hole after lo and high nodes!\n");
  err = -EINVAL;
  goto err_hi;
 }

 memset(&node, 0, sizeof(node));
 err = drm_mm_insert_node_generic(&mm, &node,
      2, 0, 0,
      mode | DRM_MM_INSERT_ONCE);
 if (!err) {
  pr_err("Unexpectedly inserted the node into the wrong hole: node.start=%llx\n",
         node.start);
  err = -EINVAL;
  goto err_node;
 }

 err = drm_mm_insert_node_generic(&mm, &node, 2, 0, 0, mode);
 if (err) {
  pr_err("Could not insert the node into the available hole!\n");
  err = -EINVAL;
  goto err_hi;
 }

err_node:
 drm_mm_remove_node(&node);
err_hi:
 drm_mm_remove_node(&rsvd_hi);
err_lo:
 drm_mm_remove_node(&rsvd_lo);
err:
 drm_mm_takedown(&mm);
 return err;
}

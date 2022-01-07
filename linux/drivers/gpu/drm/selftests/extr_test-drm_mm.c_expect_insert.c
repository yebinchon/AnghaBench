
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct insert_mode {int name; int mode; } ;
struct drm_mm_node {int dummy; } ;
struct drm_mm {int dummy; } ;


 int assert_node (struct drm_mm_node*,struct drm_mm*,int ,int ,unsigned long) ;
 int drm_mm_insert_node_generic (struct drm_mm*,struct drm_mm_node*,int ,int ,unsigned long,int ) ;
 int drm_mm_remove_node (struct drm_mm_node*) ;
 int pr_err (char*,int ,int ,unsigned long,int ,int) ;

__attribute__((used)) static bool expect_insert(struct drm_mm *mm, struct drm_mm_node *node,
     u64 size, u64 alignment, unsigned long color,
     const struct insert_mode *mode)
{
 int err;

 err = drm_mm_insert_node_generic(mm, node,
      size, alignment, color,
      mode->mode);
 if (err) {
  pr_err("insert (size=%llu, alignment=%llu, color=%lu, mode=%s) failed with err=%d\n",
         size, alignment, color, mode->name, err);
  return 0;
 }

 if (!assert_node(node, mm, size, alignment, color)) {
  drm_mm_remove_node(node);
  return 0;
 }

 return 1;
}

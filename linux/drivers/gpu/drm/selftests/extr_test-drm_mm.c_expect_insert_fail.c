
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct drm_mm_node {int size; int start; } ;
struct drm_mm {int dummy; } ;


 int ENOSPC ;
 int drm_mm_insert_node (struct drm_mm*,struct drm_mm_node*,int ) ;
 int drm_mm_remove_node (struct drm_mm_node*) ;
 scalar_t__ likely (int) ;
 int pr_err (char*,int,int,...) ;

__attribute__((used)) static bool expect_insert_fail(struct drm_mm *mm, u64 size)
{
 struct drm_mm_node tmp = {};
 int err;

 err = drm_mm_insert_node(mm, &tmp, size);
 if (likely(err == -ENOSPC))
  return 1;

 if (!err) {
  pr_err("impossible insert succeeded, node %llu + %llu\n",
         tmp.start, tmp.size);
  drm_mm_remove_node(&tmp);
 } else {
  pr_err("impossible insert failed with wrong error %d [expected %d], size %llu\n",
         err, -ENOSPC, size);
 }
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
struct drm_mm_node {unsigned int size; scalar_t__ start; } ;
struct drm_mm {unsigned int size; scalar_t__ start; } ;
typedef int mm ;


 int EINVAL ;
 int assert_no_holes (struct drm_mm_node*) ;
 int assert_one_hole (struct drm_mm_node*,int ,unsigned int const) ;
 int drm_mm_clean (struct drm_mm_node*) ;
 int drm_mm_init (struct drm_mm_node*,int ,unsigned int const) ;
 scalar_t__ drm_mm_initialized (struct drm_mm_node*) ;
 int drm_mm_remove_node (struct drm_mm_node*) ;
 int drm_mm_reserve_node (struct drm_mm_node*,struct drm_mm_node*) ;
 int drm_mm_takedown (struct drm_mm_node*) ;
 int memset (struct drm_mm_node*,int,int) ;
 int pr_err (char*) ;
 int show_mm (struct drm_mm_node*) ;

__attribute__((used)) static int igt_init(void *ignored)
{
 const unsigned int size = 4096;
 struct drm_mm mm;
 struct drm_mm_node tmp;
 int ret = -EINVAL;


 memset(&mm, 0, sizeof(mm));
 if (drm_mm_initialized(&mm)) {
  pr_err("zeroed mm claims to be initialized\n");
  return ret;
 }

 memset(&mm, 0xff, sizeof(mm));
 drm_mm_init(&mm, 0, size);
 if (!drm_mm_initialized(&mm)) {
  pr_err("mm claims not to be initialized\n");
  goto out;
 }

 if (!drm_mm_clean(&mm)) {
  pr_err("mm not empty on creation\n");
  goto out;
 }


 if (!assert_one_hole(&mm, 0, size)) {
  ret = -EINVAL;
  goto out;
 }

 memset(&tmp, 0, sizeof(tmp));
 tmp.start = 0;
 tmp.size = size;
 ret = drm_mm_reserve_node(&mm, &tmp);
 if (ret) {
  pr_err("failed to reserve whole drm_mm\n");
  goto out;
 }


 if (!assert_no_holes(&mm)) {
  ret = -EINVAL;
  goto out;
 }


 drm_mm_remove_node(&tmp);
 if (!assert_one_hole(&mm, 0, size)) {
  ret = -EINVAL;
  goto out;
 }

out:
 if (ret)
  show_mm(&mm);
 drm_mm_takedown(&mm);
 return ret;
}

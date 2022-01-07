
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_syncmap {int dummy; } ;


 int EINVAL ;
 int i915_syncmap_free (struct i915_syncmap**) ;
 int pr_err (char*) ;

__attribute__((used)) static int check_syncmap_free(struct i915_syncmap **sync)
{
 i915_syncmap_free(sync);
 if (*sync) {
  pr_err("sync not cleared after free\n");
  return -EINVAL;
 }

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_syncmap {int dummy; } ;


 int check_syncmap_free (struct i915_syncmap**) ;
 int i915_syncmap_init (struct i915_syncmap**) ;

__attribute__((used)) static int igt_syncmap_init(void *arg)
{
 struct i915_syncmap *sync = (void *)~0ul;






 i915_syncmap_init(&sync);
 return check_syncmap_free(&sync);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_syncmap {unsigned int bitmap; scalar_t__ height; } ;


 struct i915_syncmap** __sync_child (struct i915_syncmap*) ;
 unsigned int ffs (unsigned int) ;
 int kfree (struct i915_syncmap*) ;

__attribute__((used)) static void __sync_free(struct i915_syncmap *p)
{
 if (p->height) {
  unsigned int i;

  while ((i = ffs(p->bitmap))) {
   p->bitmap &= ~0u << i;
   __sync_free(__sync_child(p)[i - 1]);
  }
 }

 kfree(p);
}

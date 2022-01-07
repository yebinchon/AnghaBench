
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_syncmap {struct i915_syncmap* parent; } ;


 int __sync_free (struct i915_syncmap*) ;

void i915_syncmap_free(struct i915_syncmap **root)
{
 struct i915_syncmap *p;

 p = *root;
 if (!p)
  return;

 while (p->parent)
  p = p->parent;

 __sync_free(p);
 *root = ((void*)0);
}

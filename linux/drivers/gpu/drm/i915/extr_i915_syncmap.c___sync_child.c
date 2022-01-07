
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_syncmap {int height; } ;


 int GEM_BUG_ON (int) ;

__attribute__((used)) static inline struct i915_syncmap **__sync_child(struct i915_syncmap *p)
{
 GEM_BUG_ON(!p->height);
 return (struct i915_syncmap **)(p + 1);
}

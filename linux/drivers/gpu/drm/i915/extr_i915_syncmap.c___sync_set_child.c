
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_syncmap {int bitmap; } ;


 int BIT (unsigned int) ;
 struct i915_syncmap** __sync_child (struct i915_syncmap*) ;

__attribute__((used)) static inline void __sync_set_child(struct i915_syncmap *p,
        unsigned int idx,
        struct i915_syncmap *child)
{
 p->bitmap |= BIT(idx);
 __sync_child(p)[idx] = child;
}

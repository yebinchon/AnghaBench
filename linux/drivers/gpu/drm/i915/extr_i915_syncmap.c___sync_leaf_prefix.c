
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct i915_syncmap {int height; } ;


 int GEM_BUG_ON (int ) ;
 int SHIFT ;

__attribute__((used)) static inline u64 __sync_leaf_prefix(const struct i915_syncmap *p, u64 id)
{
 GEM_BUG_ON(p->height);
 return id >> SHIFT;
}

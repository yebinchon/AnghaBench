
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u64 ;
struct i915_syncmap {int height; } ;


 int GEM_BUG_ON (int ) ;
 unsigned int MASK ;

__attribute__((used)) static inline unsigned int
__sync_leaf_idx(const struct i915_syncmap *p, u64 id)
{
 GEM_BUG_ON(p->height);
 return id & MASK;
}

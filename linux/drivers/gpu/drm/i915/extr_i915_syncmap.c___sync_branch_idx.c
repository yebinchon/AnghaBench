
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u64 ;
struct i915_syncmap {unsigned int height; } ;


 unsigned int MASK ;

__attribute__((used)) static inline unsigned int
__sync_branch_idx(const struct i915_syncmap *p, u64 id)
{
 return (id >> p->height) & MASK;
}

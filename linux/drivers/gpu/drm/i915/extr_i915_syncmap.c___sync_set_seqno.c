
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct i915_syncmap {int bitmap; } ;


 int BIT (unsigned int) ;
 unsigned int __sync_leaf_idx (struct i915_syncmap*,int ) ;
 int * __sync_seqno (struct i915_syncmap*) ;

__attribute__((used)) static inline void __sync_set_seqno(struct i915_syncmap *p, u64 id, u32 seqno)
{
 unsigned int idx = __sync_leaf_idx(p, id);

 p->bitmap |= BIT(idx);
 __sync_seqno(p)[idx] = seqno;
}

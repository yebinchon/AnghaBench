
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct i915_syncmap {scalar_t__ prefix; } ;


 scalar_t__ __sync_leaf_prefix (struct i915_syncmap*,int ) ;
 int __sync_set (struct i915_syncmap**,int ,int ) ;
 int __sync_set_seqno (struct i915_syncmap*,int ,int ) ;
 scalar_t__ likely (int ) ;

int i915_syncmap_set(struct i915_syncmap **root, u64 id, u32 seqno)
{
 struct i915_syncmap *p = *root;





 if (likely(p && __sync_leaf_prefix(p, id) == p->prefix)) {
  __sync_set_seqno(p, id, seqno);
  return 0;
 }

 return __sync_set(root, id, seqno);
}

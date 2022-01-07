
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct i915_syncmap {scalar_t__ prefix; int bitmap; int height; struct i915_syncmap* parent; } ;


 int BIT (unsigned int) ;
 size_t __sync_branch_idx (struct i915_syncmap*,int ) ;
 scalar_t__ __sync_branch_prefix (struct i915_syncmap*,int ) ;
 struct i915_syncmap** __sync_child (struct i915_syncmap*) ;
 unsigned int __sync_leaf_idx (struct i915_syncmap*,int ) ;
 scalar_t__ __sync_leaf_prefix (struct i915_syncmap*,int ) ;
 int * __sync_seqno (struct i915_syncmap*) ;
 scalar_t__ likely (int) ;
 int seqno_later (int ,int ) ;

bool i915_syncmap_is_later(struct i915_syncmap **root, u64 id, u32 seqno)
{
 struct i915_syncmap *p;
 unsigned int idx;

 p = *root;
 if (!p)
  return 0;

 if (likely(__sync_leaf_prefix(p, id) == p->prefix))
  goto found;


 do {
  p = p->parent;
  if (!p)
   return 0;

  if (__sync_branch_prefix(p, id) == p->prefix)
   break;
 } while (1);


 do {
  if (!p->height)
   break;

  p = __sync_child(p)[__sync_branch_idx(p, id)];
  if (!p)
   return 0;

  if (__sync_branch_prefix(p, id) != p->prefix)
   return 0;
 } while (1);

 *root = p;
found:
 idx = __sync_leaf_idx(p, id);
 if (!(p->bitmap & BIT(idx)))
  return 0;

 return seqno_later(__sync_seqno(p)[idx], seqno);
}

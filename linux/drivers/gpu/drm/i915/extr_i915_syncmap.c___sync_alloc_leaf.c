
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct i915_syncmap {int prefix; scalar_t__ bitmap; scalar_t__ height; struct i915_syncmap* parent; } ;


 int GFP_KERNEL ;
 int KSYNCMAP ;
 int __sync_leaf_prefix (struct i915_syncmap*,int ) ;
 struct i915_syncmap* kmalloc (int,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct i915_syncmap *
__sync_alloc_leaf(struct i915_syncmap *parent, u64 id)
{
 struct i915_syncmap *p;

 p = kmalloc(sizeof(*p) + KSYNCMAP * sizeof(u32), GFP_KERNEL);
 if (unlikely(!p))
  return ((void*)0);

 p->parent = parent;
 p->height = 0;
 p->bitmap = 0;
 p->prefix = __sync_leaf_prefix(p, id);
 return p;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct i915_syncmap {int bitmap; int height; struct i915_syncmap* parent; } ;


 int BIT_ULL (unsigned int) ;
 int EINVAL ;
 scalar_t__ SHIFT ;
 size_t __sync_branch_idx (struct i915_syncmap*,int ) ;
 struct i915_syncmap** __sync_child (struct i915_syncmap*) ;
 int check_leaf (struct i915_syncmap**,int ,int ) ;
 int dump_syncmap (struct i915_syncmap*,int) ;
 int hweight32 (int ) ;
 int i915_syncmap_init (struct i915_syncmap**) ;
 int pr_err (char*,...) ;

__attribute__((used)) static int igt_syncmap_join_above(void *arg)
{
 struct i915_syncmap *sync;
 unsigned int pass, order;
 int err;

 i915_syncmap_init(&sync);
 for (pass = 0; pass < 3; pass++) {
  for (order = 0; order < 64; order += SHIFT) {
   u64 context = BIT_ULL(order);
   struct i915_syncmap *join;

   err = check_leaf(&sync, context, 0);
   if (err)
    goto out;

   join = sync->parent;
   if (!join)
    continue;

   if (!join->height) {
    pr_err("Parent with no height!\n");
    err = -EINVAL;
    goto out;
   }

   if (hweight32(join->bitmap) != 2) {
    pr_err("Join does not have 2 children: %x (%d)\n",
           join->bitmap, hweight32(join->bitmap));
    err = -EINVAL;
    goto out;
   }

   if (__sync_child(join)[__sync_branch_idx(join, context)] != sync) {
    pr_err("Leaf misplaced in parent!\n");
    err = -EINVAL;
    goto out;
   }
  }
 }
out:
 return dump_syncmap(sync, err);
}

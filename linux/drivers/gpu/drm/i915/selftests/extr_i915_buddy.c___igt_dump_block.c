
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_buddy_mm {int dummy; } ;
struct i915_buddy_block {int parent; int header; } ;


 int i915_buddy_block_offset (struct i915_buddy_block*) ;
 int i915_buddy_block_order (struct i915_buddy_block*) ;
 int i915_buddy_block_size (struct i915_buddy_mm*,struct i915_buddy_block*) ;
 int i915_buddy_block_state (struct i915_buddy_block*) ;
 int pr_err (char*,int ,int ,int ,int ,int ,int ,int ) ;
 int yesno (int) ;

__attribute__((used)) static void __igt_dump_block(struct i915_buddy_mm *mm,
        struct i915_buddy_block *block,
        bool buddy)
{
 pr_err("block info: header=%llx, state=%u, order=%d, offset=%llx size=%llx root=%s buddy=%s\n",
        block->header,
        i915_buddy_block_state(block),
        i915_buddy_block_order(block),
        i915_buddy_block_offset(block),
        i915_buddy_block_size(mm, block),
        yesno(!block->parent),
        yesno(buddy));
}

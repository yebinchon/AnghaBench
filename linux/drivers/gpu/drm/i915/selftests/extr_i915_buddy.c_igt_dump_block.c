
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_buddy_mm {int dummy; } ;
struct i915_buddy_block {int dummy; } ;


 int __igt_dump_block (struct i915_buddy_mm*,struct i915_buddy_block*,int) ;
 struct i915_buddy_block* get_buddy (struct i915_buddy_block*) ;

__attribute__((used)) static void igt_dump_block(struct i915_buddy_mm *mm,
      struct i915_buddy_block *block)
{
 struct i915_buddy_block *buddy;

 __igt_dump_block(mm, block, 0);

 buddy = get_buddy(block);
 if (buddy)
  __igt_dump_block(mm, buddy, 1);
}

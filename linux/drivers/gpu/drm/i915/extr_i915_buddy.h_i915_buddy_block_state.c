
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_buddy_block {unsigned int header; } ;


 unsigned int I915_BUDDY_HEADER_STATE ;

__attribute__((used)) static inline unsigned int
i915_buddy_block_state(struct i915_buddy_block *block)
{
 return block->header & I915_BUDDY_HEADER_STATE;
}

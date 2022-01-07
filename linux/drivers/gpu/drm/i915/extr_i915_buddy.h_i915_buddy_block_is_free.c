
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_buddy_block {int dummy; } ;


 scalar_t__ I915_BUDDY_FREE ;
 scalar_t__ i915_buddy_block_state (struct i915_buddy_block*) ;

__attribute__((used)) static inline bool
i915_buddy_block_is_free(struct i915_buddy_block *block)
{
 return i915_buddy_block_state(block) == I915_BUDDY_FREE;
}

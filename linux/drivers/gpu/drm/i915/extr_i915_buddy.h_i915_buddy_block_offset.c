
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct i915_buddy_block {int header; } ;


 int I915_BUDDY_HEADER_OFFSET ;

__attribute__((used)) static inline u64
i915_buddy_block_offset(struct i915_buddy_block *block)
{
 return block->header & I915_BUDDY_HEADER_OFFSET;
}

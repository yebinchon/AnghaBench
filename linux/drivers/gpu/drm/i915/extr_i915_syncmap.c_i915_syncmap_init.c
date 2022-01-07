
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_syncmap {int bitmap; } ;


 scalar_t__ BITS_PER_TYPE (int ) ;
 int BUILD_BUG_ON (int) ;
 int BUILD_BUG_ON_NOT_POWER_OF_2 (scalar_t__) ;
 scalar_t__ KSYNCMAP ;
 scalar_t__ SHIFT ;

void i915_syncmap_init(struct i915_syncmap **root)
{
 BUILD_BUG_ON_NOT_POWER_OF_2(KSYNCMAP);
 BUILD_BUG_ON_NOT_POWER_OF_2(SHIFT);
 BUILD_BUG_ON(KSYNCMAP > BITS_PER_TYPE((*root)->bitmap));
 *root = ((void*)0);
}

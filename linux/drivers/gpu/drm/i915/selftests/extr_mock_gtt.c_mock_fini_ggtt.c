
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_ggtt {int vm; } ;


 int i915_address_space_fini (int *) ;

void mock_fini_ggtt(struct i915_ggtt *ggtt)
{
 i915_address_space_fini(&ggtt->vm);
}

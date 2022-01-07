
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pin_mode {int flags; int size; } ;
struct i915_vma {int dummy; } ;


 scalar_t__ i915_vma_misplaced (struct i915_vma const*,int ,int ,int ) ;

__attribute__((used)) static bool assert_pin_valid(const struct i915_vma *vma,
        const struct pin_mode *mode,
        int result)
{
 if (result)
  return 0;

 if (i915_vma_misplaced(vma, mode->size, 0, mode->flags))
  return 0;

 return 1;
}

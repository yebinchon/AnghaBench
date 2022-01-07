
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct i915_vma {int vm; } ;
struct TYPE_2__ {int pin_bias; } ;


 TYPE_1__* i915_vm_to_ggtt (int ) ;

__attribute__((used)) static inline u32 i915_ggtt_pin_bias(struct i915_vma *vma)
{
 return i915_vm_to_ggtt(vma->vm)->pin_bias;
}

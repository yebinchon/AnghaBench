
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_active {int dummy; } ;


 int ENOENT ;
 int active_to_vma (struct i915_active*) ;
 scalar_t__ i915_vma_tryget (int ) ;

__attribute__((used)) static int __i915_vma_active(struct i915_active *ref)
{
 return i915_vma_tryget(active_to_vma(ref)) ? 0 : -ENOENT;
}

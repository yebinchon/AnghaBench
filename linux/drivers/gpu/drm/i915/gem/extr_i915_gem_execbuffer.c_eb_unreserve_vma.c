
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_vma {int dummy; } ;


 unsigned int __EXEC_OBJECT_HAS_PIN ;
 unsigned int __EXEC_OBJECT_RESERVED ;
 int __eb_unreserve_vma (struct i915_vma*,unsigned int) ;

__attribute__((used)) static inline void
eb_unreserve_vma(struct i915_vma *vma, unsigned int *flags)
{
 if (!(*flags & __EXEC_OBJECT_HAS_PIN))
  return;

 __eb_unreserve_vma(vma, *flags);
 *flags &= ~__EXEC_OBJECT_RESERVED;
}

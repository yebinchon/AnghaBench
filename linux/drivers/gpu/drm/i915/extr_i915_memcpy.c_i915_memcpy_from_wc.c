
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __memcpy_ntdqa (void*,void const*,unsigned long) ;
 int has_movntdqa ;
 scalar_t__ likely (unsigned long) ;
 scalar_t__ static_branch_likely (int *) ;
 scalar_t__ unlikely (unsigned long) ;

bool i915_memcpy_from_wc(void *dst, const void *src, unsigned long len)
{
 if (unlikely(((unsigned long)dst | (unsigned long)src | len) & 15))
  return 0;
 return 0;
}

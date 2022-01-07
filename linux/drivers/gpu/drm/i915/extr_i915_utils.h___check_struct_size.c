
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ check_add_overflow (size_t,size_t,size_t*) ;
 scalar_t__ check_mul_overflow (size_t,size_t,size_t*) ;

__attribute__((used)) static inline bool
__check_struct_size(size_t base, size_t arr, size_t count, size_t *size)
{
 size_t sz;

 if (check_mul_overflow(count, arr, &sz))
  return 0;

 if (check_add_overflow(sz, base, &sz))
  return 0;

 *size = sz;
 return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t SIZE_MAX ;

__attribute__((used)) static inline size_t size_vstruct(size_t nelem, size_t elem_size, size_t base)
{
 if (elem_size && nelem > (SIZE_MAX - base) / elem_size)
  return 0;
 return base + nelem * elem_size;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void __limit_set_val(unsigned int *ptr, unsigned int val)
{
 if (!*ptr)
  *ptr = val;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int MASK_BUCKETS ;

__attribute__((used)) static unsigned int hash_str(const char *str)
{
 const unsigned int hash_mult = 2654435387U;
 unsigned int h = 0;

 while (*str)
  h = (h + (unsigned int) *str++) * hash_mult;

 return h & MASK_BUCKETS;
}

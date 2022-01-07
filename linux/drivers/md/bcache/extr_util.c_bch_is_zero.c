
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
bool bch_is_zero(const char *p, size_t n)
{
 size_t i;

 for (i = 0; i < n; i++)
  if (p[i])
   return 0;
 return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int intel_dp_rate_index(const int *rates, int len, int rate)
{
 int i;

 for (i = 0; i < len; i++)
  if (rate == rates[i])
   return i;

 return -1;
}

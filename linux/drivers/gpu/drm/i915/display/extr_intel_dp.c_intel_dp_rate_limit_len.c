
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int intel_dp_rate_limit_len(const int *rates, int len, int max_rate)
{
 int i;


 for (i = 0; i < len; i++) {
  if (rates[len - i - 1] <= max_rate)
   return len - i;
 }

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DP_MAX_SUPPORTED_RATES ;
 scalar_t__ WARN_ON (int) ;

__attribute__((used)) static int intersect_rates(const int *source_rates, int source_len,
      const int *sink_rates, int sink_len,
      int *common_rates)
{
 int i = 0, j = 0, k = 0;

 while (i < source_len && j < sink_len) {
  if (source_rates[i] == sink_rates[j]) {
   if (WARN_ON(k >= DP_MAX_SUPPORTED_RATES))
    return k;
   common_rates[k] = source_rates[i];
   ++k;
   ++i;
   ++j;
  } else if (source_rates[i] < sink_rates[j]) {
   ++i;
  } else {
   ++j;
  }
 }
 return k;
}

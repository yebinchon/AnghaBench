
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ PERF_LEVEL_GET ;
 scalar_t__ PERF_LEVEL_SET ;
 scalar_t__ PERF_LIMITS_GET ;
 scalar_t__ PERF_LIMITS_SET ;

__attribute__((used)) static bool scmi_perf_fc_size_is_valid(u32 msg, u32 size)
{
 if ((msg == PERF_LEVEL_GET || msg == PERF_LEVEL_SET) && size == 4)
  return 1;
 if ((msg == PERF_LIMITS_GET || msg == PERF_LIMITS_SET) && size == 8)
  return 1;
 return 0;
}

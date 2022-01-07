
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 scalar_t__ SSP_FACTOR_WITH_MS ;
 int SSP_INVERTED_SCALING_FACTOR ;
 int div64_u64 (int,int) ;

__attribute__((used)) static inline int ssp_convert_to_time(int integer_part, int fractional)
{
 u64 value;

 value = (u64)integer_part * SSP_INVERTED_SCALING_FACTOR + fractional;
 if (value == 0)
  return 0;

 return div64_u64((u64)SSP_FACTOR_WITH_MS, value);
}

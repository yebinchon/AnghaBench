
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int SSP_FACTOR_WITH_MS ;
 int SSP_INVERTED_SCALING_FACTOR ;

__attribute__((used)) static inline void ssp_convert_to_freq(u32 time, int *integer_part,
           int *fractional)
{
 if (time == 0) {
  *fractional = 0;
  *integer_part = 0;
  return;
 }

 *integer_part = SSP_FACTOR_WITH_MS / time;
 *fractional = *integer_part % SSP_INVERTED_SCALING_FACTOR;
 *integer_part = *integer_part / SSP_INVERTED_SCALING_FACTOR;
}

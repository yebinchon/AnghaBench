
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_dp {int num_common_rates; int common_rates; } ;


 int intel_dp_rate_limit_len (int ,int ,int) ;

__attribute__((used)) static int intel_dp_common_len_rate_limit(const struct intel_dp *intel_dp,
       int max_rate)
{
 return intel_dp_rate_limit_len(intel_dp->common_rates,
           intel_dp->num_common_rates, max_rate);
}

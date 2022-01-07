
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_dp {int* common_rates; int num_common_rates; } ;



__attribute__((used)) static int intel_dp_max_common_rate(struct intel_dp *intel_dp)
{
 return intel_dp->common_rates[intel_dp->num_common_rates - 1];
}

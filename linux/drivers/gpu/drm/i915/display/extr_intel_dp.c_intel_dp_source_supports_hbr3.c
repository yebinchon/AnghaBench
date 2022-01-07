
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_dp {int* source_rates; int num_source_rates; } ;



bool intel_dp_source_supports_hbr3(struct intel_dp *intel_dp)
{
 int max_rate = intel_dp->source_rates[intel_dp->num_source_rates - 1];

 return max_rate >= 810000;
}

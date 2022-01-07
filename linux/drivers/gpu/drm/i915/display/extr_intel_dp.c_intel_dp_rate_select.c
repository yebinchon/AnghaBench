
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_dp {int num_sink_rates; int sink_rates; } ;


 scalar_t__ WARN_ON (int) ;
 int intel_dp_rate_index (int ,int ,int) ;

int intel_dp_rate_select(struct intel_dp *intel_dp, int rate)
{
 int i = intel_dp_rate_index(intel_dp->sink_rates,
        intel_dp->num_sink_rates, rate);

 if (WARN_ON(i < 0))
  i = 0;

 return i;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_dp {int num_common_rates; int* common_rates; int num_sink_rates; int sink_rates; int num_source_rates; int source_rates; } ;


 scalar_t__ WARN_ON (int) ;
 int intersect_rates (int ,int ,int ,int ,int*) ;

__attribute__((used)) static void intel_dp_set_common_rates(struct intel_dp *intel_dp)
{
 WARN_ON(!intel_dp->num_source_rates || !intel_dp->num_sink_rates);

 intel_dp->num_common_rates = intersect_rates(intel_dp->source_rates,
           intel_dp->num_source_rates,
           intel_dp->sink_rates,
           intel_dp->num_sink_rates,
           intel_dp->common_rates);


 if (WARN_ON(intel_dp->num_common_rates == 0)) {
  intel_dp->common_rates[0] = 162000;
  intel_dp->num_common_rates = 1;
 }
}

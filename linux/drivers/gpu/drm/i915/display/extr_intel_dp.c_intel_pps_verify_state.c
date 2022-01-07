
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edp_power_seq {scalar_t__ t1_t3; scalar_t__ t8; scalar_t__ t9; scalar_t__ t10; scalar_t__ t11_t12; } ;
struct intel_dp {struct edp_power_seq pps_delays; } ;


 int DRM_ERROR (char*) ;
 int intel_pps_dump_state (char*,struct edp_power_seq*) ;
 int intel_pps_readout_hw_state (struct intel_dp*,struct edp_power_seq*) ;

__attribute__((used)) static void
intel_pps_verify_state(struct intel_dp *intel_dp)
{
 struct edp_power_seq hw;
 struct edp_power_seq *sw = &intel_dp->pps_delays;

 intel_pps_readout_hw_state(intel_dp, &hw);

 if (hw.t1_t3 != sw->t1_t3 || hw.t8 != sw->t8 || hw.t9 != sw->t9 ||
     hw.t10 != sw->t10 || hw.t11_t12 != sw->t11_t12) {
  DRM_ERROR("PPS state mismatch\n");
  intel_pps_dump_state("sw", sw);
  intel_pps_dump_state("hw", &hw);
 }
}

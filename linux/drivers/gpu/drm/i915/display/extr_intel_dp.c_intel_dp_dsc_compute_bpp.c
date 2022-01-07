
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct intel_dp {int dsc_dpcd; } ;


 int drm_dp_dsc_sink_supported_input_bpcs (int ,int*) ;

__attribute__((used)) static int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp, u8 dsc_max_bpc)
{
 int i, num_bpc;
 u8 dsc_bpc[3] = {0};

 num_bpc = drm_dp_dsc_sink_supported_input_bpcs(intel_dp->dsc_dpcd,
             dsc_bpc);
 for (i = 0; i < num_bpc; i++) {
  if (dsc_max_bpc >= dsc_bpc[i])
   return dsc_bpc[i] * 3;
 }

 return 0;
}

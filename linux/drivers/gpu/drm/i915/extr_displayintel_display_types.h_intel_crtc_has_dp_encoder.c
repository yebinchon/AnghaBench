
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_crtc_state {int output_types; } ;


 int INTEL_OUTPUT_DP ;
 int INTEL_OUTPUT_DP_MST ;
 int INTEL_OUTPUT_EDP ;

__attribute__((used)) static inline bool
intel_crtc_has_dp_encoder(const struct intel_crtc_state *crtc_state)
{
 return crtc_state->output_types &
  ((1 << INTEL_OUTPUT_DP) |
   (1 << INTEL_OUTPUT_DP_MST) |
   (1 << INTEL_OUTPUT_EDP));
}

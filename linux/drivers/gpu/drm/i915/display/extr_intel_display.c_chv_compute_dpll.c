
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dpll; int dpll_md; } ;
struct intel_crtc_state {int pixel_multiplier; TYPE_1__ dpll_hw_state; } ;
struct intel_crtc {scalar_t__ pipe; } ;


 int DPLL_INTEGRATED_CRI_CLK_VLV ;
 int DPLL_MD_UDI_MULTIPLIER_SHIFT ;
 int DPLL_REF_CLK_ENABLE_VLV ;
 int DPLL_SSC_REF_CLK_CHV ;
 int DPLL_VCO_ENABLE ;
 int DPLL_VGA_MODE_DIS ;
 int INTEL_OUTPUT_DSI ;
 scalar_t__ PIPE_A ;
 int intel_crtc_has_type (struct intel_crtc_state*,int ) ;

__attribute__((used)) static void chv_compute_dpll(struct intel_crtc *crtc,
        struct intel_crtc_state *pipe_config)
{
 pipe_config->dpll_hw_state.dpll = DPLL_SSC_REF_CLK_CHV |
  DPLL_REF_CLK_ENABLE_VLV | DPLL_VGA_MODE_DIS;
 if (crtc->pipe != PIPE_A)
  pipe_config->dpll_hw_state.dpll |= DPLL_INTEGRATED_CRI_CLK_VLV;


 if (!intel_crtc_has_type(pipe_config, INTEL_OUTPUT_DSI))
  pipe_config->dpll_hw_state.dpll |= DPLL_VCO_ENABLE;

 pipe_config->dpll_hw_state.dpll_md =
  (pipe_config->pixel_multiplier - 1) << DPLL_MD_UDI_MULTIPLIER_SHIFT;
}

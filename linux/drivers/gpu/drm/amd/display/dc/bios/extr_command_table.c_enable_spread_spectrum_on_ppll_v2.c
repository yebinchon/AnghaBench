
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_7__ {int feedback_amount; int nfrac_amount; scalar_t__ ds_frac_size; } ;
struct TYPE_6__ {scalar_t__ CENTER_SPREAD; scalar_t__ EXTERNAL_SS; } ;
struct bp_spread_spectrum_parameters {scalar_t__ pll_id; scalar_t__ percentage; TYPE_2__ ds; TYPE_1__ flags; } ;
struct bios_parser {int dummy; } ;
typedef int params ;
typedef enum bp_result { ____Placeholder_bp_result } bp_result ;
struct TYPE_8__ {int ucEnable; void* usSpreadSpectrumAmount; int ucSpreadSpectrumType; void* usSpreadSpectrumStep; void* usSpreadSpectrumPercentage; } ;
typedef TYPE_3__ ENABLE_SPREAD_SPECTRUM_ON_PPLL_V2 ;


 int ATOM_DISABLE ;
 int ATOM_ENABLE ;
 int ATOM_PPLL_SS_AMOUNT_V2_FBDIV_MASK ;
 int ATOM_PPLL_SS_AMOUNT_V2_FBDIV_SHIFT ;
 int ATOM_PPLL_SS_AMOUNT_V2_NFRAC_MASK ;
 int ATOM_PPLL_SS_AMOUNT_V2_NFRAC_SHIFT ;
 int ATOM_PPLL_SS_TYPE_V2_CENTRE_SPREAD ;
 int ATOM_PPLL_SS_TYPE_V2_EXT_SPREAD ;
 int ATOM_PPLL_SS_TYPE_V2_P1PLL ;
 int ATOM_PPLL_SS_TYPE_V2_P2PLL ;
 int BP_RESULT_FAILURE ;
 int BP_RESULT_OK ;
 int BREAK_TO_DEBUGGER () ;
 scalar_t__ CLOCK_SOURCE_ID_PLL1 ;
 scalar_t__ CLOCK_SOURCE_ID_PLL2 ;
 scalar_t__ EXEC_BIOS_CMD_TABLE (int ,TYPE_3__) ;
 int EnableSpreadSpectrumOnPPLL ;
 void* cpu_to_le16 (int ) ;
 int memset (TYPE_3__*,int ,int) ;

__attribute__((used)) static enum bp_result enable_spread_spectrum_on_ppll_v2(
 struct bios_parser *bp,
 struct bp_spread_spectrum_parameters *bp_params,
 bool enable)
{
 enum bp_result result = BP_RESULT_FAILURE;
 ENABLE_SPREAD_SPECTRUM_ON_PPLL_V2 params;

 memset(&params, 0, sizeof(params));

 if (bp_params->pll_id == CLOCK_SOURCE_ID_PLL1)
  params.ucSpreadSpectrumType = ATOM_PPLL_SS_TYPE_V2_P1PLL;
 else if (bp_params->pll_id == CLOCK_SOURCE_ID_PLL2)
  params.ucSpreadSpectrumType = ATOM_PPLL_SS_TYPE_V2_P2PLL;
 else
  BREAK_TO_DEBUGGER();

 if ((enable == 1) && (bp_params->percentage > 0)) {
  params.ucEnable = ATOM_ENABLE;

  params.usSpreadSpectrumPercentage =
    cpu_to_le16((uint16_t)(bp_params->percentage));
  params.usSpreadSpectrumStep =
    cpu_to_le16((uint16_t)(bp_params->ds.ds_frac_size));

  if (bp_params->flags.EXTERNAL_SS)
   params.ucSpreadSpectrumType |=
     ATOM_PPLL_SS_TYPE_V2_EXT_SPREAD;

  if (bp_params->flags.CENTER_SPREAD)
   params.ucSpreadSpectrumType |=
     ATOM_PPLL_SS_TYPE_V2_CENTRE_SPREAD;




  params.usSpreadSpectrumAmount = cpu_to_le16((uint16_t)(
    ((bp_params->ds.feedback_amount <<
      ATOM_PPLL_SS_AMOUNT_V2_FBDIV_SHIFT) &
      ATOM_PPLL_SS_AMOUNT_V2_FBDIV_MASK) |
      ((bp_params->ds.nfrac_amount <<
        ATOM_PPLL_SS_AMOUNT_V2_NFRAC_SHIFT) &
        ATOM_PPLL_SS_AMOUNT_V2_NFRAC_MASK)));
 } else
  params.ucEnable = ATOM_DISABLE;

 if (EXEC_BIOS_CMD_TABLE(EnableSpreadSpectrumOnPPLL, params))
  result = BP_RESULT_OK;

 return result;
}

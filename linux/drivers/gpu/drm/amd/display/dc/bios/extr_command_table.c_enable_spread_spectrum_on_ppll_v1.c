
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* uint8_t ;
typedef int uint16_t ;
struct TYPE_7__ {scalar_t__ CENTER_SPREAD; scalar_t__ EXTERNAL_SS; } ;
struct TYPE_6__ {int range; scalar_t__ delay; scalar_t__ step; } ;
struct bp_spread_spectrum_parameters {scalar_t__ percentage; scalar_t__ pll_id; TYPE_2__ flags; TYPE_1__ ver1; } ;
struct bios_parser {int dummy; } ;
typedef int params ;
typedef enum bp_result { ____Placeholder_bp_result } bp_result ;
struct TYPE_8__ {int ucPpll; int ucSpreadSpectrumType; void* ucSpreadSpectrumRange; void* ucSpreadSpectrumDelay; void* ucSpreadSpectrumStep; int usSpreadSpectrumPercentage; int ucEnable; } ;
typedef TYPE_3__ ENABLE_SPREAD_SPECTRUM_ON_PPLL ;


 int ATOM_DISABLE ;
 int ATOM_ENABLE ;
 int ATOM_EXTERNAL_SS_MASK ;
 int ATOM_PPLL1 ;
 int ATOM_PPLL2 ;
 int ATOM_SS_CENTRE_SPREAD_MODE ;
 int BP_RESULT_FAILURE ;
 int BP_RESULT_OK ;
 int BREAK_TO_DEBUGGER () ;
 scalar_t__ CLOCK_SOURCE_ID_PLL1 ;
 scalar_t__ CLOCK_SOURCE_ID_PLL2 ;
 scalar_t__ EXEC_BIOS_CMD_TABLE (int ,TYPE_3__) ;
 int EnableSpreadSpectrumOnPPLL ;
 int cpu_to_le16 (int ) ;
 int memset (TYPE_3__*,int ,int) ;

__attribute__((used)) static enum bp_result enable_spread_spectrum_on_ppll_v1(
 struct bios_parser *bp,
 struct bp_spread_spectrum_parameters *bp_params,
 bool enable)
{
 enum bp_result result = BP_RESULT_FAILURE;
 ENABLE_SPREAD_SPECTRUM_ON_PPLL params;

 memset(&params, 0, sizeof(params));

 if ((enable == 1) && (bp_params->percentage > 0))
  params.ucEnable = ATOM_ENABLE;
 else
  params.ucEnable = ATOM_DISABLE;

 params.usSpreadSpectrumPercentage =
   cpu_to_le16((uint16_t)bp_params->percentage);
 params.ucSpreadSpectrumStep =
   (uint8_t)bp_params->ver1.step;
 params.ucSpreadSpectrumDelay =
   (uint8_t)bp_params->ver1.delay;

 params.ucSpreadSpectrumRange =
   (uint8_t)(bp_params->ver1.range / 10000);

 if (bp_params->flags.EXTERNAL_SS)
  params.ucSpreadSpectrumType |= ATOM_EXTERNAL_SS_MASK;

 if (bp_params->flags.CENTER_SPREAD)
  params.ucSpreadSpectrumType |= ATOM_SS_CENTRE_SPREAD_MODE;

 if (bp_params->pll_id == CLOCK_SOURCE_ID_PLL1)
  params.ucPpll = ATOM_PPLL1;
 else if (bp_params->pll_id == CLOCK_SOURCE_ID_PLL2)
  params.ucPpll = ATOM_PPLL2;
 else
  BREAK_TO_DEBUGGER();

 if (EXEC_BIOS_CMD_TABLE(EnableSpreadSpectrumOnPPLL, params))
  result = BP_RESULT_OK;

 return result;
}

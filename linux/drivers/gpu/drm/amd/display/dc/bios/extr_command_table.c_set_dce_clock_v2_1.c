
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* uint32_t ;
struct command_table_helper {int (* dc_clock_type_to_atom ) (int ,void**) ;int (* clock_source_id_to_atom ) (int ,void**) ;} ;
struct TYPE_6__ {scalar_t__ USE_GENERICA_AS_SOURCE_FOR_DPREFCLK; scalar_t__ USE_XTALIN_AS_SOURCE_FOR_DPREFCLK; scalar_t__ USE_PCIE_AS_SOURCE_FOR_DPREFCLK; scalar_t__ USE_GENLOCK_AS_SOURCE_FOR_DPREFCLK; } ;
struct bp_set_dce_clock_parameters {int target_clock_frequency; TYPE_1__ flags; int clock_type; int pll_id; } ;
struct bios_parser {struct command_table_helper* cmd_helper; } ;
typedef int params ;
typedef enum bp_result { ____Placeholder_bp_result } bp_result ;
struct TYPE_7__ {int ulDCEClkFreq; int ucDCEClkFlag; void* ucDCEClkType; void* ucDCEClkSrc; } ;
struct TYPE_8__ {TYPE_2__ asParam; } ;
typedef TYPE_3__ SET_DCE_CLOCK_PS_ALLOCATION_V2_1 ;


 int BP_RESULT_BADINPUT ;
 int BP_RESULT_FAILURE ;
 int BP_RESULT_OK ;
 int DCECLOCK_TYPE_DPREFCLK ;
 int DCE_CLOCK_FLAG_PLL_REFCLK_SRC_GENERICA ;
 int DCE_CLOCK_FLAG_PLL_REFCLK_SRC_GENLK ;
 int DCE_CLOCK_FLAG_PLL_REFCLK_SRC_PCIE ;
 int DCE_CLOCK_FLAG_PLL_REFCLK_SRC_XTALIN ;
 scalar_t__ EXEC_BIOS_CMD_TABLE (int ,TYPE_3__) ;
 int SetDCEClock ;
 int cpu_to_le32 (int) ;
 int le32_to_cpu (int ) ;
 int memset (TYPE_3__*,int ,int) ;
 int stub1 (int ,void**) ;
 int stub2 (int ,void**) ;

__attribute__((used)) static enum bp_result set_dce_clock_v2_1(
 struct bios_parser *bp,
 struct bp_set_dce_clock_parameters *bp_params)
{
 enum bp_result result = BP_RESULT_FAILURE;

 SET_DCE_CLOCK_PS_ALLOCATION_V2_1 params;
 uint32_t atom_pll_id;
 uint32_t atom_clock_type;
 const struct command_table_helper *cmd = bp->cmd_helper;

 memset(&params, 0, sizeof(params));

 if (!cmd->clock_source_id_to_atom(bp_params->pll_id, &atom_pll_id) ||
   !cmd->dc_clock_type_to_atom(bp_params->clock_type, &atom_clock_type))
  return BP_RESULT_BADINPUT;

 params.asParam.ucDCEClkSrc = atom_pll_id;
 params.asParam.ucDCEClkType = atom_clock_type;

 if (bp_params->clock_type == DCECLOCK_TYPE_DPREFCLK) {
  if (bp_params->flags.USE_GENLOCK_AS_SOURCE_FOR_DPREFCLK)
   params.asParam.ucDCEClkFlag |= DCE_CLOCK_FLAG_PLL_REFCLK_SRC_GENLK;

  if (bp_params->flags.USE_PCIE_AS_SOURCE_FOR_DPREFCLK)
   params.asParam.ucDCEClkFlag |= DCE_CLOCK_FLAG_PLL_REFCLK_SRC_PCIE;

  if (bp_params->flags.USE_XTALIN_AS_SOURCE_FOR_DPREFCLK)
   params.asParam.ucDCEClkFlag |= DCE_CLOCK_FLAG_PLL_REFCLK_SRC_XTALIN;

  if (bp_params->flags.USE_GENERICA_AS_SOURCE_FOR_DPREFCLK)
   params.asParam.ucDCEClkFlag |= DCE_CLOCK_FLAG_PLL_REFCLK_SRC_GENERICA;
 }
 else


  params.asParam.ulDCEClkFreq = cpu_to_le32(bp_params->target_clock_frequency / 10);

 if (EXEC_BIOS_CMD_TABLE(SetDCEClock, params)) {

  bp_params->target_clock_frequency = le32_to_cpu(params.asParam.ulDCEClkFreq) * 10;
  result = BP_RESULT_OK;
 }

 return result;
}

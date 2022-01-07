
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_8__ {scalar_t__ SET_DISPCLK_DFS_BYPASS; scalar_t__ SET_EXTERNAL_REF_DIV_SRC; } ;
struct bp_pixel_clock_parameters {int target_pixel_clock_100hz; scalar_t__ dfs_bypass_display_clock; TYPE_2__ flags; int pll_id; } ;
struct bios_parser {TYPE_1__* cmd_helper; } ;
typedef int params ;
typedef enum bp_result { ____Placeholder_bp_result } bp_result ;
struct TYPE_9__ {int ulDispEngClkFreq; int ucMiscInfo; scalar_t__ ucPpll; } ;
struct TYPE_10__ {TYPE_3__ sPCLKInput; } ;
struct TYPE_7__ {int (* clock_source_id_to_atom ) (int ,scalar_t__*) ;} ;
typedef TYPE_4__ SET_PIXEL_CLOCK_PS_ALLOCATION_V6 ;


 int BP_RESULT_BADINPUT ;
 int BP_RESULT_FAILURE ;
 int BP_RESULT_OK ;
 int BREAK_TO_DEBUGGER () ;
 scalar_t__ EXEC_BIOS_CMD_TABLE (int ,TYPE_4__) ;
 int PIXEL_CLOCK_MISC_REF_DIV_SRC ;
 int PIXEL_CLOCK_V6_MISC_DPREFCLK_BYPASS ;
 int SetPixelClock ;
 int cpu_to_le32 (int) ;
 int le32_to_cpu (int ) ;
 int memset (TYPE_4__*,int ,int) ;
 int stub1 (int ,scalar_t__*) ;

__attribute__((used)) static enum bp_result program_clock_v6(
 struct bios_parser *bp,
 struct bp_pixel_clock_parameters *bp_params)
{
 enum bp_result result = BP_RESULT_FAILURE;

 SET_PIXEL_CLOCK_PS_ALLOCATION_V6 params;
 uint32_t atom_pll_id;

 memset(&params, 0, sizeof(params));

 if (!bp->cmd_helper->clock_source_id_to_atom(
   bp_params->pll_id, &atom_pll_id)) {
  BREAK_TO_DEBUGGER();
  return BP_RESULT_BADINPUT;
 }


 params.sPCLKInput.ucPpll = (uint8_t)atom_pll_id;
 params.sPCLKInput.ulDispEngClkFreq =
   cpu_to_le32(bp_params->target_pixel_clock_100hz / 100);

 if (bp_params->flags.SET_EXTERNAL_REF_DIV_SRC)
  params.sPCLKInput.ucMiscInfo |= PIXEL_CLOCK_MISC_REF_DIV_SRC;

 if (bp_params->flags.SET_DISPCLK_DFS_BYPASS)
  params.sPCLKInput.ucMiscInfo |= PIXEL_CLOCK_V6_MISC_DPREFCLK_BYPASS;

 if (EXEC_BIOS_CMD_TABLE(SetPixelClock, params)) {


  bp_params->dfs_bypass_display_clock =
    (uint32_t)(le32_to_cpu(params.sPCLKInput.ulDispEngClkFreq) * 10);
  result = BP_RESULT_OK;
 }

 return result;
}

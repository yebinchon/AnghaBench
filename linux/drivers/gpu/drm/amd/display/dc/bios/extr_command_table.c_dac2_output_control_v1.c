
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct bios_parser {int dummy; } ;
typedef enum bp_result { ____Placeholder_bp_result } bp_result ;
struct TYPE_3__ {int ucAction; } ;
typedef TYPE_1__ DISPLAY_DEVICE_OUTPUT_CONTROL_PS_ALLOCATION ;


 int ATOM_DISABLE ;
 int ATOM_ENABLE ;
 int BP_RESULT_FAILURE ;
 int BP_RESULT_OK ;
 int DAC2OutputControl ;
 scalar_t__ EXEC_BIOS_CMD_TABLE (int ,TYPE_1__) ;

__attribute__((used)) static enum bp_result dac2_output_control_v1(
 struct bios_parser *bp, bool enable)
{
 enum bp_result result = BP_RESULT_FAILURE;
 DISPLAY_DEVICE_OUTPUT_CONTROL_PS_ALLOCATION params;

 if (enable)
  params.ucAction = ATOM_ENABLE;
 else
  params.ucAction = ATOM_DISABLE;

 if (EXEC_BIOS_CMD_TABLE(DAC2OutputControl, params))
  result = BP_RESULT_OK;

 return result;
}

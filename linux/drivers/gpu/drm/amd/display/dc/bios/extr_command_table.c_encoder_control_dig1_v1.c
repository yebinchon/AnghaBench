
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct bp_encoder_control {int dummy; } ;
struct bios_parser {TYPE_2__* cmd_helper; } ;
typedef enum bp_result { ____Placeholder_bp_result } bp_result ;
struct TYPE_6__ {int (* assign_control_parameter ) (TYPE_2__*,struct bp_encoder_control*,TYPE_1__*) ;} ;
struct TYPE_5__ {int member_0; } ;
typedef TYPE_1__ DIG_ENCODER_CONTROL_PARAMETERS_V2 ;


 int BP_RESULT_FAILURE ;
 int BP_RESULT_OK ;
 int DIG1EncoderControl ;
 scalar_t__ EXEC_BIOS_CMD_TABLE (int ,TYPE_1__) ;
 int stub1 (TYPE_2__*,struct bp_encoder_control*,TYPE_1__*) ;

__attribute__((used)) static enum bp_result encoder_control_dig1_v1(
 struct bios_parser *bp,
 struct bp_encoder_control *cntl)
{
 enum bp_result result = BP_RESULT_FAILURE;
 DIG_ENCODER_CONTROL_PARAMETERS_V2 params = {0};

 bp->cmd_helper->assign_control_parameter(bp->cmd_helper, cntl, &params);

 if (EXEC_BIOS_CMD_TABLE(DIG1EncoderControl, params))
  result = BP_RESULT_OK;

 return result;
}

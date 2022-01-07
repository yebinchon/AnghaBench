
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * dac2_output_control; int * dac1_output_control; } ;
struct bios_parser {TYPE_1__ cmd_tbl; } ;


 int BIOS_CMD_TABLE_PARA_REVISION (int ) ;
 int DAC1OutputControl ;
 int DAC2OutputControl ;
 int * dac1_output_control_v1 ;
 int * dac2_output_control_v1 ;

__attribute__((used)) static void init_dac_output_control(struct bios_parser *bp)
{
 switch (BIOS_CMD_TABLE_PARA_REVISION(DAC1OutputControl)) {
 case 1:
  bp->cmd_tbl.dac1_output_control = dac1_output_control_v1;
  break;
 default:
  bp->cmd_tbl.dac1_output_control = ((void*)0);
  break;
 }
 switch (BIOS_CMD_TABLE_PARA_REVISION(DAC2OutputControl)) {
 case 1:
  bp->cmd_tbl.dac2_output_control = dac2_output_control_v1;
  break;
 default:
  bp->cmd_tbl.dac2_output_control = ((void*)0);
  break;
 }
}

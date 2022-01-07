
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * dac2_encoder_control; int * dac1_encoder_control; } ;
struct bios_parser {TYPE_1__ cmd_tbl; } ;


 int BIOS_CMD_TABLE_PARA_REVISION (int ) ;
 int DAC1EncoderControl ;
 int DAC2EncoderControl ;
 int * dac1_encoder_control_v1 ;
 int * dac2_encoder_control_v1 ;

__attribute__((used)) static void init_dac_encoder_control(struct bios_parser *bp)
{
 switch (BIOS_CMD_TABLE_PARA_REVISION(DAC1EncoderControl)) {
 case 1:
  bp->cmd_tbl.dac1_encoder_control = dac1_encoder_control_v1;
  break;
 default:
  bp->cmd_tbl.dac1_encoder_control = ((void*)0);
  break;
 }
 switch (BIOS_CMD_TABLE_PARA_REVISION(DAC2EncoderControl)) {
 case 1:
  bp->cmd_tbl.dac2_encoder_control = dac2_encoder_control_v1;
  break;
 default:
  bp->cmd_tbl.dac2_encoder_control = ((void*)0);
  break;
 }
}

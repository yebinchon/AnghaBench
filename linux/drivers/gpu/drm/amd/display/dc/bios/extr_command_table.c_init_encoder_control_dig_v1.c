
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_tbl {int dig_encoder_control; int * encoder_control_dig2; int * encoder_control_dig1; } ;
struct bios_parser {struct cmd_tbl cmd_tbl; } ;


 int BIOS_CMD_TABLE_PARA_REVISION (int ) ;
 int DIG1EncoderControl ;
 int DIG2EncoderControl ;
 int * encoder_control_dig1_v1 ;
 int * encoder_control_dig2_v1 ;
 int encoder_control_dig_v1 ;

__attribute__((used)) static void init_encoder_control_dig_v1(struct bios_parser *bp)
{
 struct cmd_tbl *cmd_tbl = &bp->cmd_tbl;

 if (1 == BIOS_CMD_TABLE_PARA_REVISION(DIG1EncoderControl))
  cmd_tbl->encoder_control_dig1 = encoder_control_dig1_v1;
 else
  cmd_tbl->encoder_control_dig1 = ((void*)0);

 if (1 == BIOS_CMD_TABLE_PARA_REVISION(DIG2EncoderControl))
  cmd_tbl->encoder_control_dig2 = encoder_control_dig2_v1;
 else
  cmd_tbl->encoder_control_dig2 = ((void*)0);

 cmd_tbl->dig_encoder_control = encoder_control_dig_v1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * external_encoder_control; } ;
struct bios_parser {TYPE_1__ cmd_tbl; } ;


 int BIOS_CMD_TABLE_PARA_REVISION (int ) ;
 int ExternalEncoderControl ;
 int * external_encoder_control_v3 ;

__attribute__((used)) static void init_external_encoder_control(
 struct bios_parser *bp)
{
 switch (BIOS_CMD_TABLE_PARA_REVISION(ExternalEncoderControl)) {
 case 3:
  bp->cmd_tbl.external_encoder_control =
    external_encoder_control_v3;
  break;
 default:
  bp->cmd_tbl.external_encoder_control = ((void*)0);
  break;
 }
}

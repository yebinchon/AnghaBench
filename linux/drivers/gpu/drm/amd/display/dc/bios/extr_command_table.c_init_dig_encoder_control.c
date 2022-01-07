
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int dig_encoder_control; } ;
struct bios_parser {TYPE_1__ cmd_tbl; } ;


 int BIOS_CMD_TABLE_PARA_REVISION (int ) ;
 int DIGxEncoderControl ;
 int encoder_control_digx_v3 ;
 int encoder_control_digx_v4 ;
 int encoder_control_digx_v5 ;
 int init_encoder_control_dig_v1 (struct bios_parser*) ;

__attribute__((used)) static void init_dig_encoder_control(struct bios_parser *bp)
{
 uint32_t version =
  BIOS_CMD_TABLE_PARA_REVISION(DIGxEncoderControl);

 switch (version) {
 case 2:
  bp->cmd_tbl.dig_encoder_control = encoder_control_digx_v3;
  break;
 case 4:
  bp->cmd_tbl.dig_encoder_control = encoder_control_digx_v4;
  break;

 case 5:
  bp->cmd_tbl.dig_encoder_control = encoder_control_digx_v5;
  break;

 default:
  init_encoder_control_dig_v1(bp);
  break;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_tbl {int (* encoder_control_dig1 ) (struct bios_parser*,struct bp_encoder_control*) ;int (* encoder_control_dig2 ) (struct bios_parser*,struct bp_encoder_control*) ;} ;
struct bp_encoder_control {int engine_id; } ;
struct bios_parser {struct cmd_tbl cmd_tbl; } ;
typedef enum bp_result { ____Placeholder_bp_result } bp_result ;


 int BP_RESULT_FAILURE ;


 int stub1 (struct bios_parser*,struct bp_encoder_control*) ;
 int stub2 (struct bios_parser*,struct bp_encoder_control*) ;

__attribute__((used)) static enum bp_result encoder_control_dig_v1(
 struct bios_parser *bp,
 struct bp_encoder_control *cntl)
{
 enum bp_result result = BP_RESULT_FAILURE;
 struct cmd_tbl *cmd_tbl = &bp->cmd_tbl;

 if (cntl != ((void*)0))
  switch (cntl->engine_id) {
  case 129:
   if (cmd_tbl->encoder_control_dig1 != ((void*)0))
    result =
     cmd_tbl->encoder_control_dig1(bp, cntl);
   break;
  case 128:
   if (cmd_tbl->encoder_control_dig2 != ((void*)0))
    result =
     cmd_tbl->encoder_control_dig2(bp, cntl);
   break;

  default:
   break;
  }

 return result;
}

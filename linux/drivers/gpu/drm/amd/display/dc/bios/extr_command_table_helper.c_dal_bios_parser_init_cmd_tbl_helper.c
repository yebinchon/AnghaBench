
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct command_table_helper {int dummy; } ;
typedef enum dce_version { ____Placeholder_dce_version } dce_version ;


 int BREAK_TO_DEBUGGER () ;







 struct command_table_helper* dal_cmd_tbl_helper_dce110_get_table () ;
 struct command_table_helper* dal_cmd_tbl_helper_dce112_get_table () ;
 struct command_table_helper* dal_cmd_tbl_helper_dce80_get_table () ;

bool dal_bios_parser_init_cmd_tbl_helper(
 const struct command_table_helper **h,
 enum dce_version dce)
{
 switch (dce) {
 case 130:
 case 129:
 case 128:
  *h = dal_cmd_tbl_helper_dce80_get_table();
  return 1;

 case 134:
  *h = dal_cmd_tbl_helper_dce110_get_table();
  return 1;

 case 133:
  *h = dal_cmd_tbl_helper_dce110_get_table();
  return 1;

 case 132:
 case 131:
  *h = dal_cmd_tbl_helper_dce112_get_table();
  return 1;

 default:

  BREAK_TO_DEBUGGER();
  return 0;
 }
}

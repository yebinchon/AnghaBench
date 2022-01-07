
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct command_table_helper {int dummy; } ;
typedef enum dce_version { ____Placeholder_dce_version } dce_version ;


 int BREAK_TO_DEBUGGER () ;
 struct command_table_helper* dal_cmd_tbl_helper_dce110_get_table () ;
 struct command_table_helper* dal_cmd_tbl_helper_dce112_get_table2 () ;
 struct command_table_helper* dal_cmd_tbl_helper_dce80_get_table () ;

bool dal_bios_parser_init_cmd_tbl_helper2(
 const struct command_table_helper **h,
 enum dce_version dce)
{
 switch (dce) {
 case 134:
 case 133:
 case 132:
  *h = dal_cmd_tbl_helper_dce80_get_table();
  return 1;

 case 140:
  *h = dal_cmd_tbl_helper_dce110_get_table();
  return 1;

 case 139:
  *h = dal_cmd_tbl_helper_dce110_get_table();
  return 1;

 case 138:
 case 137:
  *h = dal_cmd_tbl_helper_dce112_get_table2();
  return 1;
 case 136:
 case 135:
  *h = dal_cmd_tbl_helper_dce112_get_table2();
  return 1;

 default:

  BREAK_TO_DEBUGGER();
  return 0;
 }
}

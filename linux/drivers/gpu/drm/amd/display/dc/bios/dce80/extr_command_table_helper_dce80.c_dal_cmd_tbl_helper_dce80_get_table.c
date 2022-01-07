
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct command_table_helper {int dummy; } ;


 struct command_table_helper const command_table_helper_funcs ;

const struct command_table_helper *dal_cmd_tbl_helper_dce80_get_table(void)
{
 return &command_table_helper_funcs;
}

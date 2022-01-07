
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * set_dce_clock; } ;
struct bios_parser {TYPE_1__ cmd_tbl; } ;


 int BIOS_CMD_TABLE_PARA_REVISION (int ) ;
 int SetDCEClock ;
 int dm_output_to_console (char*,int) ;
 int * set_dce_clock_v2_1 ;

__attribute__((used)) static void init_set_dce_clock(struct bios_parser *bp)
{
 switch (BIOS_CMD_TABLE_PARA_REVISION(SetDCEClock)) {
 case 1:
  bp->cmd_tbl.set_dce_clock = set_dce_clock_v2_1;
  break;
 default:
  dm_output_to_console("Don't have set_dce_clock for v%d\n",
    BIOS_CMD_TABLE_PARA_REVISION(SetDCEClock));
  bp->cmd_tbl.set_dce_clock = ((void*)0);
  break;
 }
}

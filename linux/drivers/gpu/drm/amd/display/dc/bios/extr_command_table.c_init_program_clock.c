
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * program_clock; } ;
struct bios_parser {TYPE_1__ cmd_tbl; } ;


 int BIOS_CMD_TABLE_PARA_REVISION (int ) ;
 int SetPixelClock ;
 int dm_output_to_console (char*,int) ;
 int * program_clock_v5 ;
 int * program_clock_v6 ;

__attribute__((used)) static void init_program_clock(struct bios_parser *bp)
{
 switch (BIOS_CMD_TABLE_PARA_REVISION(SetPixelClock)) {
 case 5:
  bp->cmd_tbl.program_clock = program_clock_v5;
  break;
 case 6:
  bp->cmd_tbl.program_clock = program_clock_v6;
  break;
 default:
  dm_output_to_console("Don't have program_clock for v%d\n",
    BIOS_CMD_TABLE_PARA_REVISION(SetPixelClock));
  bp->cmd_tbl.program_clock = ((void*)0);
  break;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * set_pixel_clock; } ;
struct bios_parser {TYPE_1__ cmd_tbl; } ;


 int BIOS_CMD_TABLE_PARA_REVISION (int ) ;
 int SetPixelClock ;
 int dm_output_to_console (char*,int) ;
 int * set_pixel_clock_v3 ;
 int * set_pixel_clock_v5 ;
 int * set_pixel_clock_v6 ;
 int * set_pixel_clock_v7 ;

__attribute__((used)) static void init_set_pixel_clock(struct bios_parser *bp)
{
 switch (BIOS_CMD_TABLE_PARA_REVISION(SetPixelClock)) {
 case 3:
  bp->cmd_tbl.set_pixel_clock = set_pixel_clock_v3;
  break;
 case 5:
  bp->cmd_tbl.set_pixel_clock = set_pixel_clock_v5;
  break;
 case 6:
  bp->cmd_tbl.set_pixel_clock = set_pixel_clock_v6;
  break;
 case 7:
  bp->cmd_tbl.set_pixel_clock = set_pixel_clock_v7;
  break;
 default:
  dm_output_to_console("Don't have set_pixel_clock for v%d\n",
    BIOS_CMD_TABLE_PARA_REVISION(SetPixelClock));
  bp->cmd_tbl.set_pixel_clock = ((void*)0);
  break;
 }
}

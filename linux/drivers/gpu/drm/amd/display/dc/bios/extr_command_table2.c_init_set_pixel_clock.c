
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * set_pixel_clock; } ;
struct bios_parser {TYPE_1__ cmd_tbl; } ;


 int BIOS_CMD_TABLE_PARA_REVISION (int ) ;
 int dm_output_to_console (char*,int) ;
 int * set_pixel_clock_v7 ;
 int setpixelclock ;

__attribute__((used)) static void init_set_pixel_clock(struct bios_parser *bp)
{
 switch (BIOS_CMD_TABLE_PARA_REVISION(setpixelclock)) {
 case 7:
  bp->cmd_tbl.set_pixel_clock = set_pixel_clock_v7;
  break;
 default:
  dm_output_to_console("Don't have set_pixel_clock for v%d\n",
    BIOS_CMD_TABLE_PARA_REVISION(setpixelclock));
  bp->cmd_tbl.set_pixel_clock = ((void*)0);
  break;
 }
}

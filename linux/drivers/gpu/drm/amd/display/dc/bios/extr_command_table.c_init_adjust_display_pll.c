
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * adjust_display_pll; } ;
struct bios_parser {TYPE_1__ cmd_tbl; } ;


 int AdjustDisplayPll ;
 int BIOS_CMD_TABLE_PARA_REVISION (int ) ;
 int * adjust_display_pll_v2 ;
 int * adjust_display_pll_v3 ;
 int dm_output_to_console (char*,int) ;

__attribute__((used)) static void init_adjust_display_pll(struct bios_parser *bp)
{
 switch (BIOS_CMD_TABLE_PARA_REVISION(AdjustDisplayPll)) {
 case 2:
  bp->cmd_tbl.adjust_display_pll = adjust_display_pll_v2;
  break;
 case 3:
  bp->cmd_tbl.adjust_display_pll = adjust_display_pll_v3;
  break;
 default:
  dm_output_to_console("Don't have adjust_display_pll for v%d\n",
    BIOS_CMD_TABLE_PARA_REVISION(AdjustDisplayPll));
  bp->cmd_tbl.adjust_display_pll = ((void*)0);
  break;
 }
}

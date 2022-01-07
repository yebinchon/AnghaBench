
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * enable_spread_spectrum_on_ppll; } ;
struct bios_parser {TYPE_1__ cmd_tbl; } ;


 int BIOS_CMD_TABLE_PARA_REVISION (int ) ;
 int EnableSpreadSpectrumOnPPLL ;
 int dm_output_to_console (char*,int) ;
 int * enable_spread_spectrum_on_ppll_v1 ;
 int * enable_spread_spectrum_on_ppll_v2 ;
 int * enable_spread_spectrum_on_ppll_v3 ;

__attribute__((used)) static void init_enable_spread_spectrum_on_ppll(struct bios_parser *bp)
{
 switch (BIOS_CMD_TABLE_PARA_REVISION(EnableSpreadSpectrumOnPPLL)) {
 case 1:
  bp->cmd_tbl.enable_spread_spectrum_on_ppll =
    enable_spread_spectrum_on_ppll_v1;
  break;
 case 2:
  bp->cmd_tbl.enable_spread_spectrum_on_ppll =
    enable_spread_spectrum_on_ppll_v2;
  break;
 case 3:
  bp->cmd_tbl.enable_spread_spectrum_on_ppll =
    enable_spread_spectrum_on_ppll_v3;
  break;
 default:
  dm_output_to_console("Don't have enable_spread_spectrum_on_ppll for v%d\n",
    BIOS_CMD_TABLE_PARA_REVISION(EnableSpreadSpectrumOnPPLL));
  bp->cmd_tbl.enable_spread_spectrum_on_ppll = ((void*)0);
  break;
 }
}

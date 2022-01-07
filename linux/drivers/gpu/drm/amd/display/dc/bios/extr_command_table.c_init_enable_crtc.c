
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * enable_crtc; } ;
struct bios_parser {TYPE_1__ cmd_tbl; } ;


 int BIOS_CMD_TABLE_PARA_REVISION (int ) ;
 int EnableCRTC ;
 int dm_output_to_console (char*,int) ;
 int * enable_crtc_v1 ;

__attribute__((used)) static void init_enable_crtc(struct bios_parser *bp)
{
 switch (BIOS_CMD_TABLE_PARA_REVISION(EnableCRTC)) {
 case 1:
  bp->cmd_tbl.enable_crtc = enable_crtc_v1;
  break;
 default:
  dm_output_to_console("Don't have enable_crtc for v%d\n",
    BIOS_CMD_TABLE_PARA_REVISION(EnableCRTC));
  bp->cmd_tbl.enable_crtc = ((void*)0);
  break;
 }
}

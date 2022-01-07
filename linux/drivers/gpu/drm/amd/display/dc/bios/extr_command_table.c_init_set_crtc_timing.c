
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int * set_crtc_timing; } ;
struct bios_parser {TYPE_1__ cmd_tbl; } ;


 int BIOS_CMD_TABLE_PARA_REVISION (int ) ;
 int SetCRTC_Timing ;
 int SetCRTC_UsingDTDTiming ;
 int dm_output_to_console (char*,int) ;
 int * set_crtc_timing_v1 ;
 int * set_crtc_using_dtd_timing_v3 ;

__attribute__((used)) static void init_set_crtc_timing(struct bios_parser *bp)
{
 uint32_t dtd_version =
   BIOS_CMD_TABLE_PARA_REVISION(SetCRTC_UsingDTDTiming);
 if (dtd_version > 2)
  switch (dtd_version) {
  case 3:
   bp->cmd_tbl.set_crtc_timing =
     set_crtc_using_dtd_timing_v3;
   break;
  default:
   dm_output_to_console("Don't have set_crtc_timing for dtd v%d\n",
     dtd_version);
   bp->cmd_tbl.set_crtc_timing = ((void*)0);
   break;
  }
 else
  switch (BIOS_CMD_TABLE_PARA_REVISION(SetCRTC_Timing)) {
  case 1:
   bp->cmd_tbl.set_crtc_timing = set_crtc_timing_v1;
   break;
  default:
   dm_output_to_console("Don't have set_crtc_timing for v%d\n",
     BIOS_CMD_TABLE_PARA_REVISION(SetCRTC_Timing));
   bp->cmd_tbl.set_crtc_timing = ((void*)0);
   break;
  }
}

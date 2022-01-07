
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * enable_crtc_mem_req; } ;
struct bios_parser {TYPE_1__ cmd_tbl; } ;


 int BIOS_CMD_TABLE_PARA_REVISION (int ) ;
 int EnableCRTCMemReq ;
 int * enable_crtc_mem_req_v1 ;

__attribute__((used)) static void init_enable_crtc_mem_req(struct bios_parser *bp)
{
 switch (BIOS_CMD_TABLE_PARA_REVISION(EnableCRTCMemReq)) {
 case 1:
  bp->cmd_tbl.enable_crtc_mem_req = enable_crtc_mem_req_v1;
  break;
 default:
  bp->cmd_tbl.enable_crtc_mem_req = ((void*)0);
  break;
 }
}

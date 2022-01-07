
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcif_wb {int dummy; } ;
struct dcn20_mmhubbub {int dummy; } ;


 int MCIF_WB_BUFMGR_ENABLE ;
 int MCIF_WB_BUFMGR_SW_CONTROL ;
 int REG_UPDATE (int ,int ,int ) ;
 struct dcn20_mmhubbub* TO_DCN20_MMHUBBUB (struct mcif_wb*) ;

void mmhubbub2_disable_mcif(struct mcif_wb *mcif_wb)
{
 struct dcn20_mmhubbub *mcif_wb20 = TO_DCN20_MMHUBBUB(mcif_wb);


 REG_UPDATE(MCIF_WB_BUFMGR_SW_CONTROL, MCIF_WB_BUFMGR_ENABLE, 0);
}

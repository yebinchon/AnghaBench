
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcif_wb {int dummy; } ;
struct mcif_irq_params {int vce_slice_int_en; int vce_int_en; int sw_overrun_int_en; int sw_slice_int_en; int sw_int_en; } ;
struct dcn20_mmhubbub {int dummy; } ;


 int MCIF_WB_BUFMGR_SW_CONTROL ;
 int MCIF_WB_BUFMGR_SW_INT_EN ;
 int MCIF_WB_BUFMGR_SW_OVERRUN_INT_EN ;
 int MCIF_WB_BUFMGR_SW_SLICE_INT_EN ;
 int MCIF_WB_BUFMGR_VCE_CONTROL ;
 int MCIF_WB_BUFMGR_VCE_INT_EN ;
 int MCIF_WB_BUFMGR_VCE_SLICE_INT_EN ;
 int REG_UPDATE (int ,int ,int ) ;
 struct dcn20_mmhubbub* TO_DCN20_MMHUBBUB (struct mcif_wb*) ;

void mmhubbub2_config_mcif_irq(struct mcif_wb *mcif_wb,
  struct mcif_irq_params *params)
{
 struct dcn20_mmhubbub *mcif_wb20 = TO_DCN20_MMHUBBUB(mcif_wb);


 REG_UPDATE(MCIF_WB_BUFMGR_SW_CONTROL, MCIF_WB_BUFMGR_SW_INT_EN, params->sw_int_en);
 REG_UPDATE(MCIF_WB_BUFMGR_SW_CONTROL, MCIF_WB_BUFMGR_SW_SLICE_INT_EN, params->sw_slice_int_en);
 REG_UPDATE(MCIF_WB_BUFMGR_SW_CONTROL, MCIF_WB_BUFMGR_SW_OVERRUN_INT_EN, params->sw_overrun_int_en);

 REG_UPDATE(MCIF_WB_BUFMGR_VCE_CONTROL, MCIF_WB_BUFMGR_VCE_INT_EN, params->vce_int_en);
 REG_UPDATE(MCIF_WB_BUFMGR_VCE_CONTROL, MCIF_WB_BUFMGR_VCE_SLICE_INT_EN, params->vce_slice_int_en);
}

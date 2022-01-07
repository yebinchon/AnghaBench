
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcif_wb {int dummy; } ;
struct mcif_buf_params {int swlock; int luma_pitch; int chroma_pitch; int warmup_pitch; int * chroma_address; int * luma_address; } ;
struct dcn20_mmhubbub {int dummy; } ;


 int MCIF_ADDR (int ) ;
 int MCIF_ADDR_HIGH (int ) ;
 int MCIF_WB_BUFMGR_SW_CONTROL ;
 int MCIF_WB_BUFMGR_SW_LOCK ;
 int MCIF_WB_BUF_1_ADDR_C ;
 int MCIF_WB_BUF_1_ADDR_C_HIGH ;
 int MCIF_WB_BUF_1_ADDR_C_OFFSET ;
 int MCIF_WB_BUF_1_ADDR_Y ;
 int MCIF_WB_BUF_1_ADDR_Y_HIGH ;
 int MCIF_WB_BUF_1_ADDR_Y_OFFSET ;
 int MCIF_WB_BUF_2_ADDR_C ;
 int MCIF_WB_BUF_2_ADDR_C_HIGH ;
 int MCIF_WB_BUF_2_ADDR_C_OFFSET ;
 int MCIF_WB_BUF_2_ADDR_Y ;
 int MCIF_WB_BUF_2_ADDR_Y_HIGH ;
 int MCIF_WB_BUF_2_ADDR_Y_OFFSET ;
 int MCIF_WB_BUF_3_ADDR_C ;
 int MCIF_WB_BUF_3_ADDR_C_HIGH ;
 int MCIF_WB_BUF_3_ADDR_C_OFFSET ;
 int MCIF_WB_BUF_3_ADDR_Y ;
 int MCIF_WB_BUF_3_ADDR_Y_HIGH ;
 int MCIF_WB_BUF_3_ADDR_Y_OFFSET ;
 int MCIF_WB_BUF_4_ADDR_C ;
 int MCIF_WB_BUF_4_ADDR_C_HIGH ;
 int MCIF_WB_BUF_4_ADDR_C_OFFSET ;
 int MCIF_WB_BUF_4_ADDR_Y ;
 int MCIF_WB_BUF_4_ADDR_Y_HIGH ;
 int MCIF_WB_BUF_4_ADDR_Y_OFFSET ;
 int MCIF_WB_BUF_ADDR_FENCE_EN ;
 int MCIF_WB_BUF_CHROMA_PITCH ;
 int MCIF_WB_BUF_CHROMA_SIZE ;
 int MCIF_WB_BUF_LUMA_PITCH ;
 int MCIF_WB_BUF_LUMA_SIZE ;
 int MCIF_WB_BUF_PITCH ;
 int MCIF_WB_PITCH_SIZE_WARMUP ;
 int MCIF_WB_WARM_UP_CNTL ;
 int REG_UPDATE (int ,int ,int) ;
 int REG_UPDATE_2 (int ,int ,int,int ,int) ;
 struct dcn20_mmhubbub* TO_DCN20_MMHUBBUB (struct mcif_wb*) ;

__attribute__((used)) static void mmhubbub2_config_mcif_buf(struct mcif_wb *mcif_wb,
  struct mcif_buf_params *params,
  unsigned int dest_height)
{
 struct dcn20_mmhubbub *mcif_wb20 = TO_DCN20_MMHUBBUB(mcif_wb);


 REG_UPDATE(MCIF_WB_BUFMGR_SW_CONTROL, MCIF_WB_BUFMGR_SW_LOCK, params->swlock);


 REG_UPDATE(MCIF_WB_BUF_1_ADDR_Y, MCIF_WB_BUF_1_ADDR_Y, MCIF_ADDR(params->luma_address[0]));
 REG_UPDATE(MCIF_WB_BUF_1_ADDR_Y_HIGH, MCIF_WB_BUF_1_ADDR_Y_HIGH, MCIF_ADDR_HIGH(params->luma_address[0]));

 REG_UPDATE(MCIF_WB_BUF_1_ADDR_Y_OFFSET, MCIF_WB_BUF_1_ADDR_Y_OFFSET, 0);


 REG_UPDATE(MCIF_WB_BUF_1_ADDR_C, MCIF_WB_BUF_1_ADDR_C, MCIF_ADDR(params->chroma_address[0]));
 REG_UPDATE(MCIF_WB_BUF_1_ADDR_C_HIGH, MCIF_WB_BUF_1_ADDR_C_HIGH, MCIF_ADDR_HIGH(params->chroma_address[0]));

 REG_UPDATE(MCIF_WB_BUF_1_ADDR_C_OFFSET, MCIF_WB_BUF_1_ADDR_C_OFFSET, 0);


 REG_UPDATE(MCIF_WB_BUF_2_ADDR_Y, MCIF_WB_BUF_2_ADDR_Y, MCIF_ADDR(params->luma_address[1]));
 REG_UPDATE(MCIF_WB_BUF_2_ADDR_Y_HIGH, MCIF_WB_BUF_2_ADDR_Y_HIGH, MCIF_ADDR_HIGH(params->luma_address[1]));

 REG_UPDATE(MCIF_WB_BUF_2_ADDR_Y_OFFSET, MCIF_WB_BUF_2_ADDR_Y_OFFSET, 0);


 REG_UPDATE(MCIF_WB_BUF_2_ADDR_C, MCIF_WB_BUF_2_ADDR_C, MCIF_ADDR(params->chroma_address[1]));
 REG_UPDATE(MCIF_WB_BUF_2_ADDR_C_HIGH, MCIF_WB_BUF_2_ADDR_C_HIGH, MCIF_ADDR_HIGH(params->chroma_address[1]));

 REG_UPDATE(MCIF_WB_BUF_2_ADDR_C_OFFSET, MCIF_WB_BUF_2_ADDR_C_OFFSET, 0);


 REG_UPDATE(MCIF_WB_BUF_3_ADDR_Y, MCIF_WB_BUF_3_ADDR_Y, MCIF_ADDR(params->luma_address[2]));
 REG_UPDATE(MCIF_WB_BUF_3_ADDR_Y_HIGH, MCIF_WB_BUF_3_ADDR_Y_HIGH, MCIF_ADDR_HIGH(params->luma_address[2]));

 REG_UPDATE(MCIF_WB_BUF_3_ADDR_Y_OFFSET, MCIF_WB_BUF_3_ADDR_Y_OFFSET, 0);


 REG_UPDATE(MCIF_WB_BUF_3_ADDR_C, MCIF_WB_BUF_3_ADDR_C, MCIF_ADDR(params->chroma_address[2]));
 REG_UPDATE(MCIF_WB_BUF_3_ADDR_C_HIGH, MCIF_WB_BUF_3_ADDR_C_HIGH, MCIF_ADDR_HIGH(params->chroma_address[2]));

 REG_UPDATE(MCIF_WB_BUF_3_ADDR_C_OFFSET, MCIF_WB_BUF_3_ADDR_C_OFFSET, 0);


 REG_UPDATE(MCIF_WB_BUF_4_ADDR_Y, MCIF_WB_BUF_4_ADDR_Y, MCIF_ADDR(params->luma_address[3]));
 REG_UPDATE(MCIF_WB_BUF_4_ADDR_Y_HIGH, MCIF_WB_BUF_4_ADDR_Y_HIGH, MCIF_ADDR_HIGH(params->luma_address[3]));

 REG_UPDATE(MCIF_WB_BUF_4_ADDR_Y_OFFSET, MCIF_WB_BUF_4_ADDR_Y_OFFSET, 0);


 REG_UPDATE(MCIF_WB_BUF_4_ADDR_C, MCIF_WB_BUF_4_ADDR_C, MCIF_ADDR(params->chroma_address[3]));
 REG_UPDATE(MCIF_WB_BUF_4_ADDR_C_HIGH, MCIF_WB_BUF_4_ADDR_C_HIGH, MCIF_ADDR_HIGH(params->chroma_address[3]));

 REG_UPDATE(MCIF_WB_BUF_4_ADDR_C_OFFSET, MCIF_WB_BUF_4_ADDR_C_OFFSET, 0);





 REG_UPDATE(MCIF_WB_BUF_LUMA_SIZE, MCIF_WB_BUF_LUMA_SIZE, (params->luma_pitch>>8) * dest_height);
 REG_UPDATE(MCIF_WB_BUF_CHROMA_SIZE, MCIF_WB_BUF_CHROMA_SIZE, (params->chroma_pitch>>8) * dest_height);


 REG_UPDATE(MCIF_WB_BUFMGR_SW_CONTROL, MCIF_WB_BUF_ADDR_FENCE_EN, 1);


 REG_UPDATE_2(MCIF_WB_BUF_PITCH, MCIF_WB_BUF_LUMA_PITCH, params->luma_pitch >> 8,
   MCIF_WB_BUF_CHROMA_PITCH, params->chroma_pitch >> 8);




 REG_UPDATE(MCIF_WB_WARM_UP_CNTL, MCIF_WB_PITCH_SIZE_WARMUP, params->warmup_pitch);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct dpp {int dummy; } ;
struct dcn10_dpp {int dummy; } ;
struct TYPE_2__ {int * blue; int * green; int * red; } ;
struct dc_gamma {int num_entries; TYPE_1__ entries; } ;


 int CM_IGAM_CONTROL ;
 int CM_IGAM_INPUT_FORMAT ;
 int CM_IGAM_LUT_FORMAT_B ;
 int CM_IGAM_LUT_FORMAT_G ;
 int CM_IGAM_LUT_FORMAT_R ;
 int CM_IGAM_LUT_MODE ;
 int CM_IGAM_LUT_RW_CONTROL ;
 int CM_IGAM_LUT_RW_INDEX ;
 int CM_IGAM_LUT_RW_MODE ;
 int CM_IGAM_LUT_SEL ;
 int CM_IGAM_LUT_SEQ_COLOR ;
 int CM_IGAM_LUT_WRITE_EN_MASK ;
 int CM_MEM_PWR_CTRL ;
 int REG_GET (int ,int ,int *) ;
 int REG_SET (int ,int ,int ,int) ;
 int REG_UPDATE (int ,int ,int) ;
 int REG_UPDATE_3 (int ,int ,int,int ,int,int ,int) ;
 int SHARED_MEM_PWR_DIS ;
 struct dcn10_dpp* TO_DCN10_DPP (struct dpp*) ;
 int dc_fixpt_round (int ) ;
 int dpp1_enable_cm_block (struct dpp*) ;
 int dpp1_ingamma_ram_inuse (struct dpp*,int*) ;

void dpp1_program_input_lut(
  struct dpp *dpp_base,
  const struct dc_gamma *gamma)
{
 int i;
 struct dcn10_dpp *dpp = TO_DCN10_DPP(dpp_base);
 bool rama_occupied = 0;
 uint32_t ram_num;

 REG_SET(CM_MEM_PWR_CTRL, 0, SHARED_MEM_PWR_DIS, 1);
 dpp1_enable_cm_block(dpp_base);

 dpp1_ingamma_ram_inuse(dpp_base, &rama_occupied);
 if (!rama_occupied)
  REG_UPDATE(CM_IGAM_LUT_RW_CONTROL, CM_IGAM_LUT_SEL, 0);
 else
  REG_UPDATE(CM_IGAM_LUT_RW_CONTROL, CM_IGAM_LUT_SEL, 1);

 REG_UPDATE(CM_IGAM_LUT_RW_CONTROL, CM_IGAM_LUT_RW_MODE, 0);

 REG_UPDATE(CM_IGAM_CONTROL, CM_IGAM_INPUT_FORMAT, 0);

 REG_UPDATE(CM_IGAM_LUT_RW_CONTROL, CM_IGAM_LUT_WRITE_EN_MASK, 7);

 REG_UPDATE_3(
  CM_IGAM_CONTROL,
  CM_IGAM_LUT_FORMAT_R, 3,
  CM_IGAM_LUT_FORMAT_G, 3,
  CM_IGAM_LUT_FORMAT_B, 3);

 REG_UPDATE(CM_IGAM_LUT_RW_INDEX, CM_IGAM_LUT_RW_INDEX, 0);
 for (i = 0; i < gamma->num_entries; i++) {
  REG_SET(CM_IGAM_LUT_SEQ_COLOR, 0, CM_IGAM_LUT_SEQ_COLOR,
    dc_fixpt_round(
     gamma->entries.red[i]));
  REG_SET(CM_IGAM_LUT_SEQ_COLOR, 0, CM_IGAM_LUT_SEQ_COLOR,
    dc_fixpt_round(
     gamma->entries.green[i]));
  REG_SET(CM_IGAM_LUT_SEQ_COLOR, 0, CM_IGAM_LUT_SEQ_COLOR,
    dc_fixpt_round(
     gamma->entries.blue[i]));
 }

 REG_SET(CM_MEM_PWR_CTRL, 0, SHARED_MEM_PWR_DIS, 0);

 REG_UPDATE(CM_IGAM_CONTROL, CM_IGAM_LUT_MODE, rama_occupied ? 3 : 2);
 REG_GET(CM_IGAM_CONTROL, CM_IGAM_LUT_MODE, &ram_num);
}

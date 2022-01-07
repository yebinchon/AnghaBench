
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct input_pixel_processor {int dummy; } ;
struct dce_ipp {int dummy; } ;
struct TYPE_2__ {int * blue; int * green; int * red; } ;
struct dc_gamma {int num_entries; TYPE_1__ entries; } ;


 int DCFE_MEM_PWR_CTRL ;
 int DCP_LUT_MEM_PWR_DIS ;
 int DC_LUT_CONTROL ;
 int DC_LUT_DATA_B_FORMAT ;
 int DC_LUT_DATA_G_FORMAT ;
 int DC_LUT_DATA_R_FORMAT ;
 int DC_LUT_RW_INDEX ;
 int DC_LUT_RW_MODE ;
 int DC_LUT_SEQ_COLOR ;
 int DC_LUT_WRITE_EN_MASK ;
 int GRPH_INPUT_GAMMA_MODE ;
 int GRPH_PRESCALE_BYPASS ;
 int INPUT_GAMMA_CONTROL ;
 int PRESCALE_GRPH_CONTROL ;
 scalar_t__ REG (int ) ;
 int REG_SET (int ,int ,int ,int) ;
 int REG_SET_3 (int ,int ,int ,int,int ,int,int ,int) ;
 int REG_UPDATE (int ,int ,int) ;
 struct dce_ipp* TO_DCE_IPP (struct input_pixel_processor*) ;
 int dc_fixpt_round (int ) ;

__attribute__((used)) static void dce_ipp_program_input_lut(
 struct input_pixel_processor *ipp,
 const struct dc_gamma *gamma)
{
 int i;
 struct dce_ipp *ipp_dce = TO_DCE_IPP(ipp);


 if (REG(DCFE_MEM_PWR_CTRL))
  REG_SET(DCFE_MEM_PWR_CTRL, 0, DCP_LUT_MEM_PWR_DIS, 1);


 REG_SET(DC_LUT_WRITE_EN_MASK, 0, DC_LUT_WRITE_EN_MASK, 0x7);


 REG_UPDATE(DC_LUT_RW_MODE, DC_LUT_RW_MODE, 0);


 REG_SET_3(DC_LUT_CONTROL, 0,
  DC_LUT_DATA_R_FORMAT, 3,
  DC_LUT_DATA_G_FORMAT, 3,
  DC_LUT_DATA_B_FORMAT, 3);


 REG_SET(DC_LUT_RW_INDEX, 0,
  DC_LUT_RW_INDEX, 0);

 for (i = 0; i < gamma->num_entries; i++) {
  REG_SET(DC_LUT_SEQ_COLOR, 0, DC_LUT_SEQ_COLOR,
    dc_fixpt_round(
     gamma->entries.red[i]));
  REG_SET(DC_LUT_SEQ_COLOR, 0, DC_LUT_SEQ_COLOR,
    dc_fixpt_round(
     gamma->entries.green[i]));
  REG_SET(DC_LUT_SEQ_COLOR, 0, DC_LUT_SEQ_COLOR,
    dc_fixpt_round(
     gamma->entries.blue[i]));
 }


 if (REG(DCFE_MEM_PWR_CTRL))
  REG_SET(DCFE_MEM_PWR_CTRL, 0, DCP_LUT_MEM_PWR_DIS, 0);


 REG_UPDATE(PRESCALE_GRPH_CONTROL, GRPH_PRESCALE_BYPASS, 1);
 REG_UPDATE(INPUT_GAMMA_CONTROL, GRPH_INPUT_GAMMA_MODE, 0);
}

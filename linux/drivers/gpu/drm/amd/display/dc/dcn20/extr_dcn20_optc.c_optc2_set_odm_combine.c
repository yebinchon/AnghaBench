
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct timing_generator {int inst; } ;
struct optc {int opp_count; } ;
struct dc_crtc_timing {int h_addressable; int h_border_left; int h_border_right; scalar_t__ pixel_encoding; } ;


 int ASSERT (int) ;
 struct optc* DCN10TG_FROM_TG (struct timing_generator*) ;
 int OPTC_DATA_FORMAT ;
 int OPTC_DATA_FORMAT_CONTROL ;
 int OPTC_DATA_SOURCE_SELECT ;
 int OPTC_MEMORY_CONFIG ;
 int OPTC_MEM_SEL ;
 int OPTC_NUM_OF_INPUT_SEGMENT ;
 int OPTC_SEG0_SRC_SEL ;
 int OPTC_SEG1_SRC_SEL ;
 int OPTC_SEGMENT_WIDTH ;
 int OPTC_WIDTH_CONTROL ;
 int OTG_H_TIMING_CNTL ;
 int OTG_H_TIMING_DIV_BY2 ;
 scalar_t__ PIXEL_ENCODING_YCBCR420 ;
 scalar_t__ PIXEL_ENCODING_YCBCR422 ;
 scalar_t__ REG (int ) ;
 int REG_SET (int ,int ,int ,int) ;
 int REG_SET_3 (int ,int ,int ,int,int ,int,int ,int) ;
 int REG_UPDATE (int ,int ,int) ;

void optc2_set_odm_combine(struct timing_generator *optc, int *opp_id, int opp_cnt,
  struct dc_crtc_timing *timing)
{
 struct optc *optc1 = DCN10TG_FROM_TG(optc);

 int mpcc_hactive = (timing->h_addressable + timing->h_border_left + timing->h_border_right)
   / opp_cnt;
 int memory_mask = mpcc_hactive <= 2560 ? 0x3 : 0xf;
 uint32_t data_fmt = 0;
 if (REG(OPTC_MEMORY_CONFIG))
  REG_SET(OPTC_MEMORY_CONFIG, 0,
   OPTC_MEM_SEL, memory_mask << (optc->inst * 4));

 if (timing->pixel_encoding == PIXEL_ENCODING_YCBCR422)
  data_fmt = 1;
 else if (timing->pixel_encoding == PIXEL_ENCODING_YCBCR420)
  data_fmt = 2;

 REG_UPDATE(OPTC_DATA_FORMAT_CONTROL, OPTC_DATA_FORMAT, data_fmt);

 ASSERT(opp_cnt == 2);
 REG_SET_3(OPTC_DATA_SOURCE_SELECT, 0,
   OPTC_NUM_OF_INPUT_SEGMENT, 1,
   OPTC_SEG0_SRC_SEL, opp_id[0],
   OPTC_SEG1_SRC_SEL, opp_id[1]);

 REG_UPDATE(OPTC_WIDTH_CONTROL,
   OPTC_SEGMENT_WIDTH, mpcc_hactive);

 REG_SET(OTG_H_TIMING_CNTL, 0, OTG_H_TIMING_DIV_BY2, 1);
 optc1->opp_count = opp_cnt;
}

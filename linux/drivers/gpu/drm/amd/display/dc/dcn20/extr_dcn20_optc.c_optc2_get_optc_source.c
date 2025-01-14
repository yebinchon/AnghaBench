
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct timing_generator {int dummy; } ;
struct optc {int dummy; } ;


 struct optc* DCN10TG_FROM_TG (struct timing_generator*) ;
 int OPTC_DATA_SOURCE_SELECT ;
 int OPTC_NUM_OF_INPUT_SEGMENT ;
 int OPTC_SEG0_SRC_SEL ;
 int OPTC_SEG1_SRC_SEL ;
 int REG_GET_3 (int ,int ,int*,int ,int*,int ,int*) ;

void optc2_get_optc_source(struct timing_generator *optc,
  uint32_t *num_of_src_opp,
  uint32_t *src_opp_id_0,
  uint32_t *src_opp_id_1)
{
 uint32_t num_of_input_segments;
 struct optc *optc1 = DCN10TG_FROM_TG(optc);

 REG_GET_3(OPTC_DATA_SOURCE_SELECT,
   OPTC_NUM_OF_INPUT_SEGMENT, &num_of_input_segments,
   OPTC_SEG0_SRC_SEL, src_opp_id_0,
   OPTC_SEG1_SRC_SEL, src_opp_id_1);

 if (num_of_input_segments == 1)
  *num_of_src_opp = 2;
 else
  *num_of_src_opp = 1;
}

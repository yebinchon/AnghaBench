
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct output_pixel_processor {int dummy; } ;
struct oppbuf_params {int num_segment_padded_pixels; int pixel_repetition; int mso_overlap_pixel_num; int mso_segmentation; int active_width; } ;
struct dcn10_opp {int dummy; } ;


 int OPPBUF_ACTIVE_WIDTH ;
 int OPPBUF_CONTROL ;
 int OPPBUF_CONTROL1 ;
 int OPPBUF_DISPLAY_SEGMENTATION ;
 int OPPBUF_NUM_SEGMENT_PADDED_PIXELS ;
 int OPPBUF_OVERLAP_PIXEL_NUM ;
 int OPPBUF_PIXEL_REPETITION ;
 scalar_t__ REG (int ) ;
 int REG_UPDATE (int ,int ,int ) ;
 struct dcn10_opp* TO_DCN10_OPP (struct output_pixel_processor*) ;

void opp1_program_oppbuf(
 struct output_pixel_processor *opp,
 struct oppbuf_params *oppbuf)
{
 struct dcn10_opp *oppn10 = TO_DCN10_OPP(opp);


 REG_UPDATE(OPPBUF_CONTROL, OPPBUF_ACTIVE_WIDTH, oppbuf->active_width);







 REG_UPDATE(OPPBUF_CONTROL, OPPBUF_DISPLAY_SEGMENTATION, oppbuf->mso_segmentation);


 REG_UPDATE(OPPBUF_CONTROL, OPPBUF_OVERLAP_PIXEL_NUM, oppbuf->mso_overlap_pixel_num);




 REG_UPDATE(OPPBUF_CONTROL, OPPBUF_PIXEL_REPETITION, oppbuf->pixel_repetition);






}

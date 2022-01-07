
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct output_pixel_processor {int dummy; } ;
struct dcn20_opp {int dummy; } ;


 int FMT_422_CONTROL ;
 int FMT_LEFT_EDGE_EXTRA_PIXEL_COUNT ;
 int REG_UPDATE (int ,int ,int) ;
 struct dcn20_opp* TO_DCN20_OPP (struct output_pixel_processor*) ;

void opp2_program_left_edge_extra_pixel (
  struct output_pixel_processor *opp,
  bool count)
{
 struct dcn20_opp *oppn20 = TO_DCN20_OPP(opp);





 REG_UPDATE(FMT_422_CONTROL, FMT_LEFT_EDGE_EXTRA_PIXEL_COUNT, count);
}

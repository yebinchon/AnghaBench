
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct output_pixel_processor {int dummy; } ;
struct dcn10_opp {int dummy; } ;


 int OPP_PIPE_CLOCK_EN ;
 int OPP_PIPE_CONTROL ;
 int REG_UPDATE (int ,int ,int) ;
 struct dcn10_opp* TO_DCN10_OPP (struct output_pixel_processor*) ;

void opp1_pipe_clock_control(struct output_pixel_processor *opp, bool enable)
{
 struct dcn10_opp *oppn10 = TO_DCN10_OPP(opp);
 uint32_t regval = enable ? 1 : 0;

 REG_UPDATE(OPP_PIPE_CONTROL, OPP_PIPE_CLOCK_EN, regval);
}

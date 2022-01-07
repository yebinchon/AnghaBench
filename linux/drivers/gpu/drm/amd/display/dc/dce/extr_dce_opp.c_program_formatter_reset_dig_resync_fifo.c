
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct output_pixel_processor {int dummy; } ;
struct dce110_opp {int dummy; } ;


 int FMT_420_PIXEL_PHASE_LOCKED ;
 int FMT_420_PIXEL_PHASE_LOCKED_CLEAR ;
 int FMT_CONTROL ;
 int REG_UPDATE (int ,int ,int) ;
 int REG_WAIT (int ,int ,int,int,int) ;
 struct dce110_opp* TO_DCE110_OPP (struct output_pixel_processor*) ;

__attribute__((used)) static void program_formatter_reset_dig_resync_fifo(struct output_pixel_processor *opp)
{
 struct dce110_opp *opp110 = TO_DCE110_OPP(opp);


 REG_UPDATE(FMT_CONTROL,
   FMT_420_PIXEL_PHASE_LOCKED_CLEAR, 1);


 REG_WAIT(FMT_CONTROL, FMT_420_PIXEL_PHASE_LOCKED, 1, 10, 10);

}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct timing_generator {int inst; } ;
struct optc {int dummy; } ;


 struct optc* DCN10TG_FROM_TG (struct timing_generator*) ;
 int DWB_SOURCE_SELECT ;
 int OPTC_DWB0_SOURCE_SELECT ;
 int OPTC_DWB1_SOURCE_SELECT ;
 int REG_UPDATE (int ,int ,int ) ;

void optc2_set_dwb_source(struct timing_generator *optc,
  uint32_t dwb_pipe_inst)
{
 struct optc *optc1 = DCN10TG_FROM_TG(optc);

 if (dwb_pipe_inst == 0)
  REG_UPDATE(DWB_SOURCE_SELECT,
    OPTC_DWB0_SOURCE_SELECT, optc->inst);
 else if (dwb_pipe_inst == 1)
  REG_UPDATE(DWB_SOURCE_SELECT,
    OPTC_DWB1_SOURCE_SELECT, optc->inst);
}

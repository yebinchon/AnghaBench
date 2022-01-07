
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timing_generator {int dummy; } ;
struct optc {int dummy; } ;


 struct optc* DCN10TG_FROM_TG (struct timing_generator*) ;
 int OPTC_INPUT_GLOBAL_CONTROL ;
 int OPTC_UNDERFLOW_CLEAR ;
 int REG_UPDATE (int ,int ,int) ;

void optc1_clear_optc_underflow(struct timing_generator *optc)
{
 struct optc *optc1 = DCN10TG_FROM_TG(optc);

 REG_UPDATE(OPTC_INPUT_GLOBAL_CONTROL, OPTC_UNDERFLOW_CLEAR, 1);
}
